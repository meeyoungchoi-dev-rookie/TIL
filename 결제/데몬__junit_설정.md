1. 데몬 띄우려는 클래스 마오 클릭
2. Run Configuration
3. arguments 세팅
 + 프로젝트 경로는 로컬 폴더 경로로 변경
 + 설정 정보는 hiware에서 찾는다
 + 개발계 - > 2번째꺼 -> putty 접속
 + /system/~/~/~/vi.start*
 + 밑으로 내리다 보면 클래스명 있음
 + 해당 클래스명 + 패키지를 경로로 잡는다
 + 로그 , 디비 관련 xml 파일명을 복사해서 세팅
+  junit 사용해서 로컬(127.0.0.1) , port: 데몬이 띄워지는 포트에 연결해서 데몬 관련 테스트 진행
+ 테스트 진행시 다른 테스트 메서드는 영향 안받게 하려면 해당 메서드에 @Ignore 붙인다

+ Junit 테스트시 junit 설정을 4로 변경
+ Test class는 생성한 Junit 클래스명으로 잡아준다
+ debug > junit configurations > junit 4  , Test class : search 눌러서 클래스 선택
