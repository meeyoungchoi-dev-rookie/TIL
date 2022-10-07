Front 서버 -> XPGRequestDecoder.decode()에서 
1. 버전에 따른 분기처리 , 전문ID를 사용하여 취소전문 여부 체크 
+ 거래아이디(TID)를 터미널로그에 저장 
2. EncFlag를 사용하여 암호화 여부 판단 , EncMode를 사용하여 암호화 모드 판단
3. 전문에서 11번째 필드인 PayMethod(지불수단) 복호화 진행
4. DocumentReader 클래스에서 전문 파싱처리 (다시확인할것)
5. GiftBox map에 정합성 체크  (다시확인할것)
6. 전문수신 완료

ExecutorHandler 클래스에서 지불결제처리 BIZ 호출
NPGPayCommonValidator.validate()에서 
1. 결제공통 전문에 대한 유효성 검사진행
2. 거래ID(TID)에 존재여부를 체크한다
3. TID 중복여부 체크
4. TID 유효성 체크
5. PayMethod(지불수단) 존재여부 체크
6. svcCd , svcPrdCd , 상점별 지불 수단을 체크한다 
- 상점별 지불 수단 체크시 tb_mer_svc 테이블에서 use_cl 컬럼 사용
7. LicenseKey
8. EdiDate(전문생성일시) , Amt(금액) , EncryptData(암호화 데이터) 위변조 검증값 체크
9. 암호화 모드 - 해쉬방식

지불결제처리 BIZ 클래스 호출
1. createTransBean() -> TransCardBean.execute() -> AbstractBean 추상클래스의 execute 메서드 호출

TransCardBean preProcess() -> doProcess() -> postProcess()  