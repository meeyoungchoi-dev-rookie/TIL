## 정렬 순서

- JPA의 CriteriaQuery 객체의 orderBy 메서드를 사용하여 정렬 순서를 지정한다
- CriteriaBuilder 객체의 asc 메서드와 desc 메서드로 정렬할 대상을 지정한다
- JPQL을 사용하는 경우 order by 절을 사용하면 된다

```java
TypedQuery<Order> query = entityManager.createQuery("
        select o from Order o" + "where o.orderer.memberId.id = :ordererId " + 
        "order by o.number.number desc",
        Order.class
);
```

- 정렬순서가 고정된 경우에는 CriteriaQuery 객체의 orderBy 메서드나 JPQL의 order by 절을 사용하여 정렬순서를 지정하면 된다
- 정렬 순서를 응용 서비스에서결정하는 경우 정렬 순서를 리포지터리에 전달할 수 있어야 한다
- JPA Criteria는 Order 타입을 사용해서 정렬 순서를 지정한다
- Order 객체는 CriteriaBuilder 객체를 통해 생성할 수 있다
- 정렬순서를 지정하는 코드는 리포지터리를 사용하는 응용서비스에 위치하게 된다
- 응용서비스는 CriteriaBuilder 객체에 접근할 수 없다
- 응용서비스에서는 다른 타입을 사용하여 리포지터리에 정렬 순서를 전달하고 JPA 리포지터리를 다시 JPA Order로 변환해 줘야 한다

```java
List<Order> orders = orderRepository.findAll(someSpec, "number.number desc");
```

```java
@Repository
public class JpaOrderRepository implements OrderRepository {
    @PersistenceContext
    private EntityManager entityManager;
    
    public List<Order> findAll(Specification<Order> spec, String ... orders) {
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Order> criteriaQuery = cb.createQUery(Order.class);
        Root<Order> root = criteriaQuery.from(Order.class);
        Predicate predicate = spec.toPredicate(root, cb);
        criteriaQuery.where(predicate);
        
        if (orders.lenght > 0) {
            criteriaQuery.orderBy(JpaQueryUtils.toJpaOrders(root, cb, orders));
        }
        TypeQuery<Order> query = entityManager.createQuery(criteriaQuery);
        return query.getResultList();
    }
}
```

- JpaQueryUtils 패키지의 toJpaOrders 메서드를 사용하면 문자열 배열로 부터 JPA Order 객체를 생성한다
- 다양한 정렬 순서를 지정할 수 있다

- JPQL을 사용하는 리포지터리 코드는 toJPQLORderBy 메서드를 사용하여 orderby 절을 생성할 수 있다

```java
TypedQuery<Order< query = entityManager.createdQuery(
    "select o from Order o " + 
    "where o.orderer.memberId.id = :orderId " + 
    JpaQueryUtils.toJPQLOrderby("o", "number.number desc"),
    Order.class);
```