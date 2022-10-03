# Batch

- Batch는 **집단, 무리 한 회분, 일괄적인 처리를 위해 함께 묶다 라는 의미가 있다**
- Batch 작업은 Data를 일괄적으로 모아서 처리하는 작업을 의미한다
- 예) 하루동안 쌓인 데이터를 Batch 작업을 통해 특정 시간에 한꺼번에 처리하는 경우

## Batch를 사용하는 이유

- 업무의 효율성을 위함
- 시스템의 과부하를 줄이고 시스템 부하가 많이 발생할 수 있는 시간대를 피해,
- 지속적으로 실행되기만 하면되는 Process나 Data를 묶어 처리하는 것

## Batch 작업

- 사용자에게 빠른 응답이 필요하지 않은 서비스에 적용가능하다
- 대량 데이터를 일괄적으로 처리 하거나 특정 시간에 일괄적으로 프로그램 Process를 실행하는 것
- Batch에 반대되는 방식은 OLTP방식
    - 사용자와 DB가 지속적으로 상호작용하는 경우 OLTP 방식으로 개발되어야 한다

# Spring Batch

- Job : Batch에서 실행이 되는 실행 단위
- JobLauncher : Job을 실행시키는 역할
- JobRepository : Job 또는 Step을 저장소(DB)에서 CRUD 작업 하는 역할
- Step : Job안에서 데이터를 가공하는 실행 단위
#

### 참고

[Spring Batch-1(기본 개념). Batch란 무엇인가? | by JIM KIM | Medium](https://medium.com/@jimmyberg.kim/spring-batch-1-%EA%B8%B0%EB%B3%B8-%EA%B0%9C%EB%85%90-28220768ae87)

[[한 줄 용어]배치(Batch)란? (velog.io)](https://velog.io/@jch9537/%ED%95%9C-%EC%A4%84-%EC%9A%A9%EC%96%B4%EB%B0%B0%EC%B9%98Batch%EB%9E%80)

[Batch란 무엇인가?? (velog.io)](https://velog.io/@gillog/batch)

[배치프로그램이란? (Batch Processing) (tistory.com)](https://limkydev.tistory.com/140)