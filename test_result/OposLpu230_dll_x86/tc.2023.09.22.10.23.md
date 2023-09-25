# OposLpu230.dll test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* OposLpu230.dll version - 1.8.23, 32 bits

* the tested device
  * [ ] lpu237-C type callisto
  * [ ] lpu237-D type ganymede
  * [x] lpu238-D type europa(lpu237-D type H/W 동일)
  

* the tested Firmware version.
  * lpu237_00026.rom = v3.22(callisto) +  v5.21(ganymede).
  * lpu238_00001.rom = v1.0(europa)

## test case
1. <u>설정 파일</u>
    * %OneDrive%\문서\Easyset\lpu230\lpu230.ini 설정의 효과
      + [x] logenable 키가 1 이면 로그파일이 %OneDrive%\문서\Easyset\lpu230\log 에 생성.
2. <u>기능</u>
    * [x] 하나의 프로세서만 사용.
    * [x] device enable & data event enable & not freeze event 일 때만 데이타 올라옴.
    * [x] open 후, Claim device 해야 장비 access 가능.
    * [x] BinaryConversion OPOS_BC_NONE 일 때만, 카드 데이상 정상 decoding.
    * [x] service object verion 값 확인.
