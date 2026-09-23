# Mapper(lpu230.exe) test case.

* [x] PASS
* [ ] FAIL

## sample conditions

* the used SW package
  * lpu230_1_8_74.msi
    - mapper v1.50.0.4
    - tg_lpu237_x.dll v5.1
  * key interface 에서 메모장 대체
    - [key_speed_logger.exe](https://github.com/elpusk006/test.key-speed/blob/main/exe/by_rust/win/key_speed_logger.exe)

  * rom file
    - [lpu23x_00037.rom](https://github.com/elpusk/public.lpu237.firmware/blob/main/lpu23x/lpu23x_00037.rom)


* the tested device
  * [ ] lpu237-C type ganymede
  * [x] lpu237-D type ganymede
  * [ ] lpu237-F00NU type ganymede
  * [ ] lpu237-D type himalia
  * [ ] lpu237-D type elara

* the tested Firmware version.
  * lpu23x_00037.rom = callisto-v3.25, ganymede-v5.25.0.0, europa-v1.3.0.0, himalia-v2.6.0.0, elara-v1.3.0.0 


## test case

1. <u>mapper</u>

  * [x] 설정 읽어 오기
  * [x] 살정 저장 하기
  * [x] firmware 업데이트

2. <u>MSR 읽기</u>

    * device io 는 NDM 모드.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.(성공/회수)
        + 저속 : 10/10
        + 중속 : 10/10
        + 고속 : 10/10
      + [x] USB HID Vendor Interface 사용 - 32비트 dll ibutton 읽기 정상.
        + 성공/회수 = 10/10
      + [x] USB Keyboard Interface 사용(himalia only) - 32비트 dll 마그네틱 카드 읽기 정상.
        + 성공/회수 = 10/10
      + [x] USB Keyboard Interface 사용(himalia only) - 32비트 dll ibutton 읽기 정상.
        + 성공/회수 = 10/10
      + [x] Uart Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
        + 성공/회수 = 10/10
      + [x] Uart Interface 사용 - 32비트 dll ibutton 읽기 정상.
        + 성공/회수 = 10/10
      + [x] Virtual Uart Interface 사용(elara only) - 32비트 dll 마그네틱 카드 읽기 정상.
        + 성공/회수 = 10/10
      + [x] Virtual Uart Interface 사용(elara only) - 32비트 dll ibutton 읽기 정상.
        + 성공/회수 = 10/10

