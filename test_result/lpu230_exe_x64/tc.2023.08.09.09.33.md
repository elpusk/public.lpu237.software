# Mapper(lpu230.exe) test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* Mapper version - 1.46.0.4, 64 bits

* the tested device
  * [ ] lpu237-C type callisto
  * [ ] lpu237-C type ganymede
  * [ ] lpu237-D type callisto
  * [ ] lpu237-D type ganymede
  * [ ] lpu237-F00NU type ganymede
  * [x] lpu238-D type europa(lpu237-D type H/W 동일)
  

* the tested Firmware version.
  * lpu237_00026.rom = v3.22(callisto) +  v5.21(ganymede).
  * lpu238_00001.rom = v1.0(europa)

## test case
1. <u>Device tab</u>
    * device 연결하면 "connected Device" list에 추가
      + [x] device 두개 이상 연결하여 , 확인.
    * device 제거하면 "connected Device" list에서 제거
      + [x] device 두개 이상 연결하여 , 확인
    * "information" group box 선택에 따라, "Selects Device" 실행시, 정보가 표시
      + [x] "simple info" - combination 정보 미표시.
      + [x] "vailed info" - 활성화된 combination 정보만 표시.
      + [x] "full info" - 모든 combination 정보만 표시.
    * "Setting File" group box, "Load" 실행시, ini 또는 xml 의 정보가 표기.
      + 확장자가 txt 인 구형 설정 파일 사용.
        + [x] 하나의 attribute 만 있는 파일 사용.(1.x.txt)
        + [x] mapper 1.43.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.43.0.4.txt)
        + [x] mapper 1.44.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.44.0.4.txt)
      + 확장자가 xml 인 신형 설정 파일 사용. 
        + [x] 하나의 attribute 만 있는 파일 사용.(1.x.xml)
          - combination 은 1로 설정.
          - 1.isox..xml 은 1.isox.y0.xml 만 사용.(즉 combination 0 만 검사)
        + [x] mapper 1.43.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.43.0.4.xml)
        + [x] mapper 1.44.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.44.0.4.xml)
        + [x] mapper 1.45.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.45.0.4.xml)
    * "Setting File" group box, "Load" 실행시" 장비 호환.
      + [ ] c type 에 "uart" 가 interface 로 설정된 설정 파일 로드시, 기본값으로 로드하거나 에러 출력.
      + [x] europa 에 "keyboard" 가 interface 로 설정된 설정 파일 로드시, 기본값으로 로드하거나 에러 출력.
      + [ ] callisto 또는 ganymede 에 "virtual COM" 이 interface 로 설정된 설정 파일 로드시, 기본값으로 로드하거나 에러 출력.
    * "Setting File" group box, "Save" 실행시, ini 또는 xml 이 생성.
      + [x] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 txt로 저장.
        - v1.43.0.4 에서 지원되는 attribute 만 저장됨.
        - Mapper v1.43.0.4 에서 정상 로드.
      + [x] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 txt로 저장.
        - v1.44.0.4 에서 지원되는 attribute 만 저장됨.
        - Mapper v1.44.0.4 에서 정상 로드.
      + [x] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 xml로 저장.
        - v1.45.0.4 에서 지원되는 attribute 저장됨.
      + [x] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 xml로 저장.
        - v1.45.0.4 에서 지원되는 attribute 저장됨. 
    * "Selects Device" 실행시, 선택된 장비의 기능에 맞게 tab 이 표시.
      + [ ] C type 은 Common, Global, ISO1~3 tab.
      + [x] D type ganymede.5.21, callisto.3.22, europa.1.0 은 Common, Global, ISO1~3 , IB-tag, IB-renmove, IB-rtag tab 표시.
      + [ ] F00NU type fw.5.21 은 Common, IB-tag tab, IB-renmove, IB-rtag tab 표시.
    * "Updates Firmware" 실행시, Firmware 변경.
      + Device name이 같고, firmare 의 버전이 현재 system version 이상 일때 만 업데이트 시작.
        + [ ] lpu237_00026.rom 의 firmware 가 있는 장비에 lpu237_00026.rom 업데이트 성공.
        + [ ] lpu237_00026.rom 의 firmware 가 있는 장비에 lpu238_00001.rom 업데이트 실패.
        + [x] lpu238_00001.rom 의 firmware 가 있는 장비에 lpu238_00001.rom 업데이트 성공.
        + [x] lpu238_00001.rom 의 firmware 가 있는 장비에 lpu237_00026.rom 업데이트 실패.
        + [x] europa firmware의 interface 라 usb vcom 인 경우, ganymede binary 로 강제 update를 하면, update 후, interface 가 usb keyboard 로 자동 변경.
        + [ ] ganymede firmware의 interface 라 usb keyboard 인 경우, europa binary 로 강제 update를 하면, update 후, interface 가 usb vcom 로 자동 변경.

2. <u>Common tab</u>
    * [x] "Selects Interface" drop list 변경 후, "Apply" 실행시, device interface 변경.
        + [ ] lpu237 에서는 usb keyboard interface 있고, usb virtual COM  없음.
        + [x] lpu238 에서는 usb keyboard interface 없고, usb virtual COM  표시.
    * [x] "Selects buzzer" drop list 변경 후, "Apply" 실행시, device buzzer on/off.
    * [x] "Selects language" drop list 변경후, 모든 virtual keyboard 변경.
    * [x] "Selects i-Button" drop list 는 disable 상태.(BTC reader 전용)
    * [x] "reading direction" drop list 변경후, MS 카드 읽기 방향 변경.
    * [x] "reset interval" drop list, device name - ganymede 와 europa 에서만, enable.
    * [x] "reset interval" drop list, 변경 후, "Apply" 실행시, reset 시간 변경.
    * [x] "Enale ISO1" check boox, 변경 후, "Apply" 실행시, ISO1 인지 또는 무시.
    * [x] "Enale ISO2" check boox, 변경 후, "Apply" 실행시, ISO2 인지 또는 무시.
    * [x] "Enale ISO3" check boox, 변경 후, "Apply" 실행시, ISO3 인지 또는 무시.
    * [x] "MSR Global pre/postfix sending condition" group box, "No Error in all track" 선택 적용시, MS 카드 모든 트랙을 에러없이 읽었을 때만(blank 트랙은 정상), Global pre/postfix 가 전송.
    * [x] "MSR Global pre/postfix sending condition" group box, "One or more track are normal" 선택 적용시, MS 카드 한 개의 트랙이라도 정상으로 읽었을면, Global pre/postfix 가 전송.
    * [x] "MSR success indication condition" group box, "No Error in all track" 선택 적용시, MS 카드의 모든 트랙을 에러없이 읽었을 때만(blank 트랙은 정상), buzzer 와 LED 가 읽기 성공으로 표시.
    * [x] "MSR success indication condition" group box, "One or more track are normal" 선택 적용시, MS 카드의 한 개의 트랙이라도 정상으로 읽었을면, buzzer 와 LED 가 읽기 성공으로 표시.
    * [ ] "MSR extension functions" group box, "if track1 is equal to track2 data.don't send track1 data" 선택 적용시, ISO1, 2 의 데이타 동일시, ISO2 만 전송.
    * [ ] "MSR extension functions" group box, "if track3 is equal to track2 data.don't send track3 data" 선택 적용시, ISO3, 2 의 데이타 동일시, ISO2 만 전송.
    * [ ] "MSR extension functions" group box, "if ETXL is 0xe0 and the first character os colon, don't send colon.    " 선택 적용시, 우리증권통장 읽기.
    * [x] "i-Button/Code sticks" group box, "Send Zeros When i-button is removed" check box 선택 적용시, i-button 제거시, 0 이 16개 표시.
    * [ ] "i-Button/Code sticks" group box, "Send F12 When i-button is removed" check box 선택 적용시, i-button 제거시, F12 키 전송.(keyboard interface 만, test_ibutton.exe 사용)
    * [x] "i-Button/Code sticks" group box, "Zero is transmitted 7 times When i-button is removed" check box 선택 적용시, i-button 제거시,  0 이 7개 표시.
    * [x] "i-Button/Code sticks" group box, "Addimat company's Code stick" check box 선택 적용시, i-button 제거시, Code stick protocol에 따라 i-button 데이타 전송.
    * [ ] "The special functions" group box, "Insets OPOS sentinel" 실행시, ISO1~3 tab (prefix,postfix)가 ISO1는 ( % , ? ) , ISO2는 ( ; , ? ) , ISO3는 ( ; , ? ) 로 변경. 
    * [ ] "The special functions" group box, "Set pre/postfix type1" 실행시, ISO1~3 tab (prefix,postfix)가 ISO1는 ( % , ? ) , ISO2는 ( ; , ? ) , ISO3는 ( ; , ? ) 로 변경. 

3. <u>Global tab</u> - MS 카드 데이터 표시 전에 private Prefix 표시, 후에 , private Postfix 표시되는 키 정의.
    * [x] private Prefix 7개까지 입력.
    * [x] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [x] private Postfix 7개까지 입력.
    * [x] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Postfix 7개 설정 적용 후, device 에 정상 적용.

4. <u>ISO1 tab</u> - MS 카드 ISO1 트랙
    * [x] private Prefix 7개까지 입력.
    * [x] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [x] private Postfix 7개까지 입력.
    * [x] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Postfix 7개 설정 적용 후, device 에 정상 적용.

5.  <u>ISO2 tab</u> - MS 카드 ISO2 트랙
    * [x] private Prefix 7개까지 입력.
    * [x] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [x] private Postfix 7개까지 입력.
    * [x] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Postfix 7개 설정 적용 후, device 에 정상 적용.

6. <u>ISO3 tab</u> - MS 카드 ISO3 트랙
    * [x] private Prefix 7개까지 입력.
    * [x] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [x] private Postfix 7개까지 입력.
    * [x] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Postfix 7개 설정 적용 후, device 에 정상 적용.

7. <u>IB-tag tab</u> - i-button 데이터에 대한 pre/posfix.
    * [x] private Prefix 7개까지 입력.
    * [x] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [x] private Postfix 7개까지 입력.
    * [x] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Postfix 7개 설정 적용 후, device 에 정상 적용.

8. <u>IB-remove tab</u> - i-button 제거시, 전송되는 키.
    * [x] 키 20개까지 입력.
    * [x] "Clear" 실행시, 정의된 키 전부 삭제.
    * [x] 키 20개 설정 적용 후, Common tab 의 i-Button/Code Sticks group box 가 모두 uncheck 일때 만 정의된 키 전송.

9. <u>IB-rtag tab</u> - 제거시, 전송되는 키에 대한 pre/posfix.
    * [x] private Prefix 7개까지 입력.
    * [x] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [x] private Postfix 7개까지 입력.
    * [x] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [x] private Postfix 7개 설정 적용 후, device 에 정상 적용.
