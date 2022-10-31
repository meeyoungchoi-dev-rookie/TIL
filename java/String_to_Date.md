### String to Date
+ 문자열을 포맷에 맞추어 읽어들인 다음, Date 객체로 변환할 때도, SimpleDateFormat 클래스를 사용한다
+ 회사에서는 TimeUtils 클래스에 포맷을 효율적으로 변경할 수 있게 도와주는 메서드들이 정리되 있다

```
// 문자열        
String dateStr = "2021년 06월 19일 21시 05분 07초";         
// 포맷터        
SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");         
// 문자열 -> Date       
Date date = formatter.parse(dateStr);         
System.out.println(date); // Sat Jun 19 21:05:07 KST 2021
```

### Date to String
+ SimpleDateFormat의 생성자에 파라미터로 포맷을 지정해주고, format() 메소드를 사용하면 된다
```
Date from = new Date();
SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String to = transFormat.format(from);
```
+ 이때도 걍 TimeUtils 클래스에 있는 메서드 호출해서 가져다 쓰면 됨
