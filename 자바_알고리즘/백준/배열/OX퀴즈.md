# 백준_OX퀴즈

## 문제

"OOXXOXXOOO"와 같은 OX퀴즈의 결과가 있다. O는 문제를 맞은 것이고, X는 문제를 틀린 것이다. 문제를 맞은 경우 그 문제의 점수는 그 문제까지 연속된 O의 개수가 된다. 예를 들어, 10번 문제의 점수는 3이 된다.

"OOXXOXXOOO"의 점수는 1+2+0+0+1+0+0+1+2+3 = 10점이다.

OX퀴즈의 결과가 주어졌을 때, 점수를 구하는 프로그램을 작성하시오.

## 입력

첫째 줄에 테스트 케이스의 개수가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, 길이가 0보다 크고 80보다 작은 문자열이 주어진다. 문자열은 O와 X만으로 이루어져 있다.

## 출력

각 테스트 케이스마다 점수를 출력한다.

## 예제 입력 1

```
5
OOXXOXXOOO
OOXXOOXXOO
OXOXOXOXOXOXOX
OOOOOOOOOO
OOOOXOOOOXOOOOX

```

## 예제 출력 1

```
10
9
7
55
30
```

### 무엇

- 테스트 케이스 개수를 입력받는다
- 배열을 생성한다
- 각 테스트 케이스 인덱스에 문제 맞춘 여부를 O 또는 X로 입력받는다
- 이중 반복문을 돌린다
    - 바깥쪽 반복문에서는 배열의 크기만큼 돈다
        - 맞힌문제 개수를 저장할 변수를 0으로 초기화 한다 (cnt)
        - 테스트 케이스별 총점을 저장할 변수를 0으로 초기화 한다 (sum)
    - 안쪽 반복문을 돌린다
        - 각 테스트 케이스 인덱스의 길이보다 작을때 까지 반복문을 돌린다
        - 테스트 케이스 인덱스에 저장된 퀴즈 문자열에서 문자를 하나씩 꺼낸다
        - 문자의 값이 O와 일치하는 지 검사한다
            - 일치하는 경우 cnt (맞힌 문제 개수) 가 1씩 증가된다
            - 틀린 경우 cnt를 0으로 초기화 시킨다
    - 안쪽 반복문이 종료된후 각 퀴즈별 총점을 출력해 준다
    

### 전체 코드

```java

import java.util.Scanner;

public class OxQuiz {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();

        String[] arr = new String[n];

        for (int i = 0; i < arr.length; i++) {
            arr[i] = scanner.next();
        }

        scanner.close();

        for (int i = 0; i < arr.length; i++) {
            int cnt = 0;
            int sum = 0;

            for (int j = 0; j < arr[i].length(); j++) {
                if (arr[i].charAt(j) == 'O') {
                    cnt += 1;
                } else {
                    cnt = 0;
                }
                sum += cnt;
            }
            System.out.println(sum);
        }
    }
}
```

### 출력 결과
```
5
OOXXOXXOOO
OOXXOOXXOO
OXOXOXOXOXOXOX
OOOOOOOOOO
OOOOXOOOOXOOOOX
10
9
7
55
30
```