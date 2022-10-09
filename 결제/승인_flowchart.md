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
6. svcCd(지불수단) , svcPrdCd(상세지불수단) 을 체크한다
- 상점별 지불 수단 체크시 tb_mer_svc 테이블에서 use_cl 컬럼 사용
7. LicenseKey : tb_merchant_key 테이블의 mkey 컬럼으로 회원사 암호화키를 체크한다 (다시확인할것)
8. EdiDate(전문생성일시) , Amt(금액) , EncryptData(암호화 데이터) 위변조 검증값 체크
9. 암호화 모드 - 해쉬방식

지불결제처리 BIZ 클래스 호출
1. createTransBean() -> TransCardBean.execute() -> AbstractBean 추상클래스의 execute 메서드 호출

TransCardBean preProcess() -> doProcess() -> postProcess()  
+ preProcess()
1. sqlUpdateToAuthentication() - TrKey 존재하는 경우 와 존재하지 않는 경우에 따른 분기 처리
2. TrKey(거래key) 존재하는 경우
- tb_tr_key (원장테이블) 에서 TrKey를 조회한다 (use_cl : 사용여부 , tr_param 사용해서)
- 조회된 데이터로 요청파라미터를 재세팅 한다 (TR_PARAM) (다시확인할것)
- 원장테이블에 TrKey 사용여부를 update한다 (다시확인할것)

3. ISP 거래 (ISPPGID 값에 따라) TrKey(거래key) 존재하는 경우
- tb_isp_auth 테이블에 (ISP인증결과 테이블) TID , MID , ISPGID(PGID), GoodsName(상품명) , Amt(총금액) , kvp-noint-inf(무이자 할부정보) , kvp-auota-inf(일반할부개월수 정보) , kvp-noint(무이자할부값) , kvp-auota(할부개월수) , ispcode, kvp-coname, ISPSessionKey(세션키) , ISPEncData(암호화된 거래 데이터 key) insert

4. TrKey(거래key) 존재하는 경우  안신클릭거래 - 안심클릭 인증결과(tb_visa_auth) 테이블에 insert 한다
+ TID , MID , CardCAVV(vacc) , CardECI , CardNum , CardXID(가맹점인증번호) , JoinCode(제휴코드) 데이터

5. TR-KEY 존재하지 않은 경우 
+ 원장테이블(tb_tr_key)조회를 skip한다
+ ISP 거래 (다시 확인할것 select 인지 insert인지)
- tb_isp_auth 테이블에 (ISP인증결과 테이블) TID , MID , ISPGID(PGID), GoodsName(상품명) , Amt(총금액) , kvp-noint-inf(무이자 할부정보) , kvp-auota-inf(일반할부개월수 정보) , kvp-noint(무이자할부값) , kvp-auota(할부개월수) , ispcode, kvp-coname, ISPSessionKey(세션키) , ISPEncData(암호화된 거래 데이터 key) 
+ 안심클릭 거래 (다시 확인할것 select 인지 insert인지)
- TID , MID , CardCAVV(vacc) , CardECI , CardNum , CardXID(가맹점인증번호) , JoinCode(제휴코드) 데이터
+ ISPPGID , CardCAVV가 존재하지 않으면 인증 결과 저장을 하지 않는다

6. 간편결제종류(ClickpayCl)이 1(은련간편결제)인 경우 
+ 은련간편결제 유효성 검사 (NPGEasyUpopValidator.validate())
+ 카드결제 BIZ 요청 전문 생성 (NPGCardRequestMessageCreator) -> Ap서버 NPG01WCD01 신용카드 승인요청
+ 그외 결제수단인 경우
- 은련간편결제 유효성 검사 (NPGEasyUpopValidator.validate())
- 카드결제 BIZ 요청 전문 생성 (NPGCardRequestMessageCreator)
+ 결제 BIZ 공통부 전문 생성
+ 카드결제 BIZ body 전문 생성
+ 카드결제 BIZ 인증항목 전문 생성 
+ Ap서버 NPG01WCD01 신용카드 승인요청

7. doProcess()
+ 서비스 지연처리(procTime) 체크
+ 신용카드 전문 송수신
+ CARD_BL일때 NPGTransport.communicate()
+ -> NPG01WCD01.execute()
+ 간편결제종류(ClickpayCl)이 카카오페이인 경우 
+ -> EasyPayExecutor (간편결제 승인 요청)
+ -> PayCardClickBean

8. postProcess()
+ 응답전문 파싱 및 생성

10월 11일
- [ ]  다이어그램 내가 그린것 사진찍기
- [ ]  내가 그린것과 위의 흐름정리도를 비교하여 어떻게 말할지 정리
- [ ]  TransCardBean - doProcess() 그릴것 (doProcess 부터 카카오페이까지)
- [ ]  postProcess() 그릴것