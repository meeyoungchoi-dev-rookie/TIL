`reset` - 과거의 특정 사건(commit)으로 되돌린다

`revert` - 현재에 있으면서 과거의 특정 사건(commit)들만 없던 일로 만든다

### 가장 큰 차이점

- reset은 이력을 남기지 않는다
- 왜?
- 과거로 돌아갔기 때문에 해당 사건 이후의 사건들은 모두 사라진다
- 원하는 시점으로 완전히 되돌아가고 싶을 때 사용

```java
git reset <옵션> <돌아가고싶은 커밋 id>
```

![reset](https://user-images.githubusercontent.com/42866800/160132763-1a86e661-decc-46a6-a7f6-bba9f3a15194.png)


- revert는 이전의 commit 내역을 남겨두고 새로운 commit을 생성하여 과거로 돌아간다
- 특정 사건을 골라서 없던 일로 만든다
- 과거의 특정 사건을 없애주지만 revert 했다는 기록이 남는다

```java
git revert <돌아가고 싶은 커밋 id>
```

![revert](https://user-images.githubusercontent.com/42866800/160132817-5b1bde9c-5497-4693-b035-c9ff27b8b003.png)

## 언제 revert를 사용하는 가

- 다른 팀원과 branch를 공유하는 상황인 경우
- 왜?
- 중간에 어떤 문제가 있어 돌아갔는지 기록이 가능하다
- 코드 충돌을 최소화 할 수 있다
- rest을 사용하면 같은 브랜치에서 함께 작업한 커밋이 뒤섞일수 있다

## Branch

- 분기된 가지
- 프로젝트를 하나 이상의 모습으로 관리해야 할 때
- 여러 작업들이 각각 독립되어 진행될 때

1. 브랜치 생성

```java
git branch add-branch명
```

1. 생성된 브랜치 목록 확인

```java
git branch
```

1. 특정 브랜치로 이동

```java
git switch add-이동하려는 브랜치명
```

1. 브랜치 생성과 동시에 이동하기

```java
git switch -c 이동하려는 브랜치명
```

1. 브랜치 삭제하기

```java
git branch -d 삭제할 브랜치명
```

1. 각 브랜치에서 작업한 내역 확인하기
    1. 현재 있는 위치의 브랜치에서의 내역만 볼 수 있다

```java
git log
```

1. 여러 브랜치 내역 확인하기
    1. 소스트리에서 확인하는 것이 더 편하다

```java
git log --all --decorate --oneline --graph
```

## Branch

- 분기된 가지
- 프로젝트를 하나 이상의 모습으로 관리해야 할 때
- 여러 작업들이 각각 독립되어 진행될 때

1. 브랜치 생성

```java
git branch add-branch명
```

1. 생성된 브랜치 목록 확인

```java
git branch
```

1. 특정 브랜치로 이동

```java
git switch add-이동하려는 브랜치명
```

1. 브랜치 생성과 동시에 이동하기

```java
git switch -c 이동하려는 브랜치명
```

1. 브랜치 삭제하기

```java
git branch -d 삭제할 브랜치명
```

1. 각 브랜치에서 작업한 내역 확인하기
    1. 현재 있는 위치의 브랜치에서의 내역만 볼 수 있다

```java
git log
```

1. 여러 브랜치 내역 확인하기
    1. 소스트리에서 확인하는 것이 더 편하다

```java
git log --all --decorate --oneline --graph
```

### merge

![master 브랜치에서 sub 브랜치로 병합](https://user-images.githubusercontent.com/42866800/161073360-ddeaf746-4721-4bc7-bfc3-2362adcd8bb8.png)


- main 브랜치로 이동한다
- 합치고자 하는 브랜치를 merge로 병합해 준다

```java
git merge 병합하고자 하는 브랜치명
```

- merge도 하나의 커밋이다
- merge 하기전 해당 브랜치의 마지막 시점으로 되돌릴 수 있다
- 단 되돌리고 난후 되돌린 버전 이후의 버전은 히스토리에서 삭제된다

```java
git reset 커밋번호
```

- 병합된 브랜치는 삭제한다

```java
git branch -d -merge된 브랜치명
```

`rebase`

![master 브랜치 기준 sub 브랜치 rebase](https://user-images.githubusercontent.com/42866800/161073344-a5304924-6b12-4e0e-85c4-2da3cbc5b1f1.png)

- 특정 브랜치를 기준으로 커밋 이력을 재정렬하겠다
- 재정렬된 커밋 이력에는 새로운 해쉬ID가 부여된다
- master 브랜치에서 다른 브랜치를 기준으로 rebase 하면 master의 커밋이력이 변하게 된다
- 따라서 master에서 다른 브랜치로 rebase는 피하는게 좋다
- rebase는 커밋 이력을 깔끔하게 정리하기 위해 사용한다
- master가 아닌 다른 브랜치에서 rebase 하면 master를 기준으로 다른 브랜치의 커밋 이력이 재정렬된다
- 즉 , master 브랜치와는 관계없이 다른 브랜치가 master 브랜치를 기준으로 정렬된다

### 직접 실습 진행

![브랜치 따고 merge 실습](https://user-images.githubusercontent.com/42866800/161073331-7f0871e8-4dd6-4fca-87d3-cd042a2d5328.png)

참고 - 

[https://velog.io/@njs04210/Git-reset과-revert-알고-사용하기](https://velog.io/@njs04210/Git-reset%EA%B3%BC-revert-%EC%95%8C%EA%B3%A0-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0)

[https://youngest-programming.tistory.com/220](https://youngest-programming.tistory.com/220)

[http://www.devpools.kr/2017/01/31/개발바보들-1화-git-back-to-the-future/](http://www.devpools.kr/2017/01/31/%EA%B0%9C%EB%B0%9C%EB%B0%94%EB%B3%B4%EB%93%A4-1%ED%99%94-git-back-to-the-future/)

[https://www.yalco.kr/@git-github/3-1/](https://www.yalco.kr/@git-github/3-1/)

[https://victorydntmd.tistory.com/79](https://victorydntmd.tistory.com/79)

[https://dongminyoon.tistory.com/9](https://dongminyoon.tistory.com/9)