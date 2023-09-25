# OposLpu230.dll test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* OposLpu230Lock.dll version - 1.14.2, 32 bits

* the tested device
  * [x] lpu237-D type ganymede
  * [ ] lpu238-D type europa(lpu237-D type H/W 동일)
  

* the tested Firmware version.
  * lpu237_00026.rom = v3.22(callisto) +  v5.21(ganymede).
  * lpu238_00001.rom = v1.0(europa)

## test case
1. <u>설정 파일</u>
    * %OneDrive%\문서\Easyset\lpu230\lpu230.ini 설정의 효과
      + [x] logenable 키가 1 이면 로그파일이 %OneDrive%\문서\Easyset\lpu230\log 에 생성.
2. <u>기능</u>
    * [x] 다수의 프로세서 사용.(3개 이상에서 test 할 것)
    * [ ] ini 설정 없이 기본값으로 service object verion 값이 v1.14.1 로 올라오는지 확인.
    * [ ] ini 설정 없이 기본값 일 때, Pos.for.net 으로 만든 test program이 key 값을 비정상적으로 decoding 하는지 확인.
    * [ ] ini 설정 없이 기본값 일 때, Pos.for.net 으로 만든 test program이 set binary conversion 하면 exception 발생 확인.
    * [ ] ini 의 generate_exception_setbinaryconversion 키 값이 0 경우, service object verion 값이 v1.14.2 로 올라오는지 확인.
    * [ ] ini 의 generate_exception_setbinaryconversion 키 값이 0 경우, Pos.for.net 으로 만든 test program이 key 값을 정상적으로 decoding 하는지 확인.
    * [ ] ini 의 generate_exception_setbinaryconversion 키 값이 0 경우, Pos.for.net 으로 만든 test program이 set binary conversion 해도 정상 동작 확인.
    * [x] open 후, device enable 해야 key 값 받는지 확인.
    * [x] WaitForKeylockChange 가 동작하는지 확인
