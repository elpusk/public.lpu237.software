# Mapper(lpu230.exe) test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* tg_lpu237_x.dll v5.0

* the tested device
  * [ ] lpu237-C type ganymede
  * [x] lpu237-D type ganymede
  * [ ] lpu237-F00NU type ganymede
  * [x] lpu237-D type himalia

* the tested Firmware version.
  * lpu23x_00031.rom = callisto-v3.23, ganymede-v5.22.0.0, europa-v1.1.0.0, himalia-v2.1.0.0 

## test case
1. <u>MSR 일반 모드</u>
    * device io 는 NDM 모드.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll ibutton 읽기 정상.
    * device io 는 DIRECT 모드.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll ibutton 읽기 정상.

2. <u>himalia 암호화 모드</u>
    * device io 는 NDM 모드.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll ibutton 읽기 정상.
    * device io 는 DIRECT 모드.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB HID Vendor Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] USB Keyboard Interface 사용 - 32비트 dll ibutton 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll 마그네틱 카드 읽기 정상.
      + [x] Uart Interface 사용 - 32비트 dll ibutton 읽기 정상.

3. <u>himalia 암호화 기능</u>
    * [x] External Authentication 을 성공해서, ADMIN 권리 획득 상태에서 실패하는 External Authentication 실행은 fail counter를 증가 시키지 않음. .
    * [x] External Authentication 을 5번(fail counter) 이상 실패하면, 읽은 MSR 카드 데이터 미전송(BLOCK 상태).  (3번 ring buzzer)
    * [x] BLOCK 상태에서 firmware 다운로드 하면, BLOCK 해제 및 MSR 일반 모드로 복구.
