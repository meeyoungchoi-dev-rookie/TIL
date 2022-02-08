### ERD 구성요소

- entity
    - 개체
    - ERD 안에 있는 각 테이블을 의미한다

- attribute
    - 각 테이블의 컬럼을 의미한다
    - 예) orders 테이블을 구성하고 있는 컬럼들이 attribute가 된다
    - attribute 구조
        - 컬럼이름
        - 데이터 타입
        - PK , FK
            - PK : Primary Key  - 테이블을 대표하는 키 (고유한값을 가진다)
                - 중복이 될수 없다
            - FK : Foreign Key - 외부 식별자
                - 다른 테이블의 PK 컬럼이 FK 컬럼을 참조한다
                - 예) orders 테이블과 orderdetail 테이블이 서로 관계가 있다
                - orderdetails 테이블의 OrderId (FK) 컬럼이 orders 테이블의 OrderId (PK) 컬럼을 참조한다
            - pk 와 FK를 사용하여 두개 이상의 테이블에 대해 관계를 정의할 수 있다
    
- relationship
    - OneToMany : 하나의 데이터가 여러개의 데이터와 대응된다
    - ManyToMany : 여러개의 데이터가 여러개의 데이터와 대응된다
    - 예) 주문과 주문상세의 관계
    - 주문은 하나지만 주문안에 여러개의 상품이 있다
    - 따라서 주문상세는 여러건이다
    - 주문이 One 이 되고 OrderDetails가 Many가 된다

### 데이터 타입

- char vs varchar
- boolean
- 정수 , 실수
- 날짜 & 시간
    - date : 날짜만 존재
    - datetime : date + time
        - 예) 1000-01-01 00:00:00.0000000
    - timestamp : datetime + timezone
        - 예) 1000-01-01 00:00:00.0000000
        - 위의 시간은 한국시간 기준인지 미국시간기준인지 알수 없다
        - timezone 정보를 가지고 있다
    - mysql convert string to datetime
        - string 타입의 데이터를 datetime으로 바꿔야 날짜 연산이 가능하다
        - str_to_date 함수를 사용한다
        - 첫번째 매개변수로 string 타입의 날짜 데이터를 넣어주고
        - 두번째 매개변수로 변환할 date 형식을 넣어준다
        
        ```sql
        STR_TO_DATE(string , format)
        ```
        
        참고 - 
        
        [http://www.sqlines.com/mysql/functions/str_to_date](http://www.sqlines.com/mysql/functions/str_to_date)
        
        date변환 관련문제
        
        [DATETIME에서 DATE로 형 변환](https://www.notion.so/DATETIME-DATE-f1e560780c5a4a26bdc51dbf627debf2)