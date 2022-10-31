### StringBuffer
+ StringBuffer는 문자열을 추가하거나 변경 할 때 주로 사용하는 자료형

#### append()
+ 계속 문자열을 추가해 나간다
 ```StringBuffer sb = new StringBuffer();  // StringBuffer 객체 sb 생성
sb.append("hello");
sb.append(" ");
sb.append("jump to java");
String result = sb.toString();
System.out.println(result);
```

+  StringBuffer 객체는 한번만 생성된다

```hello jump to java```

+ toString()를 사용하면 String 자료형으로 변경할 수 있다

#### String을 사용하여 + 연산자를 사용하는 경우와 차이
```
String result = "";
result += "hello";
result += " ";
result += "jump to java";
System.out.println(result);
```

```
hello jump to java
```

+  String 자료형에 + 연산이 있을 때마다 새로운 String 객체가 생성된다
+ 문자열 간 + 연산이 있는 경우 자바는 자동으로 새로운 String 객체를 만들어 낸다

+ String 자료형은 한번 값이 생성되면 그 값을 변경할 수가 없다 
+ 이렇게 값을 변경할 수 없는 것을 immutable 하다고 한다

+ StringBuffer는 이와 반대로 값을 변경할 수 있다(mutable 하다)
+ 즉 한번 생성된 값을 언제든지 수정할 수 있다.