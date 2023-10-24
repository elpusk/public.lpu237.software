# Mapper(lpu230.exe) test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* Mapper version - 1.47.0.4, 32 bits

* the tested device
  * [x] lpu237-C type callisto
  * [ ] lpu237-C type ganymede
  * [ ] lpu237-C type europa
  * [ ] lpu237-D type callisto
  * [ ] lpu237-D type ganymede
  * [ ] lpu238-D type europa(lpu237-D type H/W 동일)
  * [ ] lpu237-F00NU type ganymede
  * [ ] lpu237-F00NU type europa
    

* the tested Firmware version.
  * lpu23x_00027.rom = v3.23(callisto) +  v5.22(ganymede) + v1.1(europa)

## test case
1. <u>Device tab</u>
    * device 연결하면 "connected Device" list에 추가
      + [ ] device 두개 이상 연결하여 , 확인.
    * device 제거하면 "connected Device" list에서 제거
      + [ ] device 두개 이상 연결하여 , 확인
    * "information" group box 선택에 따라, "Selects Device" 실행시, 정보가 표시
      + [ ] "simple info" - combination 정보 미표시.
      + [ ] "vailed info" - 활성화된 combination 정보만 표시.
      + [ ] "full info" - 모든 combination 정보만 표시.
    * "Setting File" group box, "Load" 실행시, ini 또는 xml 의 정보가 표기.
      + 확장자가 txt 인 구형 설정 파일 사용.
        + [ ] 하나의 attribute 만 있는 파일 사용.(1.x.txt)
        + [ ] mapper 1.43.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.43.0.4.txt)
        + [ ] mapper 1.44.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.44.0.4.txt)
      + 확장자가 xml 인 신형 설정 파일 사용. 
        + [ ] 하나의 attribute 만 있는 파일 사용.(1.x.xml)
          - combination 은 1로 설정.
          - 1.isox..xml 은 1.isox.y0.xml 만 사용.(즉 combination 0 만 검사)
        + [ ] mapper 1.43.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.43.0.4.xml)
        + [ ] mapper 1.44.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.44.0.4.xml)
        + [ ] mapper 1.45.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.45.0.4.xml)
        + [ ] mapper 1.47.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.47.0.4.xml)
    * "Setting File" group box, "Load" 실행시" 장비 호환.
      + [x] c type 에 "uart" 가 interface 로 설정된 설정 파일 로드시, 기본값으로 로드하거나 에러 출력.
      + [ ] europa 에 "keyboard" 가 interface 로 설정된 설정 파일 로드시, 기본값으로 로드하거나 에러 출력.
      + [x] callisto 또는 ganymede 에 "virtual COM" 이 interface 로 설정된 설정 파일 로드시, 기본값으로 로드하거나 에러 출력.
    * "Setting File" group box, "Save" 실행시, ini 또는 xml 이 생성.
      + [ ] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 txt로 저장.
        - v1.43.0.4 에서 지원되는 attribute 만 저장됨.
        - Mapper v1.43.0.4 에서 정상 로드.
      + [ ] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 txt로 저장.
        - v1.44.0.4 에서 지원되는 attribute 만 저장됨.
        - Mapper v1.44.0.4 에서 정상 로드.
      + [ ] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 xml로 저장. 경고창에서 Yes.
        - v1.47.0.4 에서 지원되는 attribute 저장됨.
      + [ ] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 xml로 저장. 경고창에서 Yes.
        - v1.47.0.4 에서 지원되는 attribute 저장됨. 
      + [ ] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 xml로 저장. 경고창에서 No.
        - v1.46.0.4 에서 지원되는 attribute 까지만 저장됨(ibutton_start, ibutton_end attributes 제외됨).
      + [ ] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 xml로 저장. 경고창에서 No.
        - v1.46.0.4 에서 지원되는 attribute 까지만 저장됨(ibutton_start, ibutton_end attributes 제외됨).

    * "Selects Device" 실행시, 선택된 장비의 기능에 맞게 tab 이 표시.
      + [x] C type 은 Common, Global, ISO1~3 tab.
      + [ ] D type fw.5.21, fw.3.22 은 Common, Global, ISO1~3 , IB-tag, IB-renmove, IB-rtag tab 표시.
      + [ ] F00NU type fw.5.21 은 Common, IB-tag tab, IB-renmove, IB-rtag tab 표시.
    * "Updates Firmware" 실행시, Firmware 변경.
      + "information" group box 에서 "full info" 선택시
        - [ ] advance mode 의 file 선택 dialog 표시.
        - rom file 선택시.
          + [ ] 정보창에 rom 파일 정보 표시.
          + [ ] combobox 에 rom 내의 firmware 표시.
          + [ ] 현재 장비와 다른 이름의 firmware 최종 선택시 경고 표시.
          + [ ] 최종 선택된 firmware 로 업데이트 성공.
        - raw binary file 선택시.
          + [ ] 정보창에 선택 파일 정보 표시.
          + [ ] combobox 요소 삭제.
          + [ ] 최종 선택된 firmware 로 업데이트 성공.
      + "information" group box 에서 "full info" 이 외 선택시
        - [ ] normal mode 의 file 선택 dialog 표시.
        - rom file 선택시, Device name이 같고, firmare 의 버전이 현재 system version 이상 일때 만 업데이트 시작.
          + [x] callisto v3.22 firmware 가 있는 장비에 lpu23x_00027.rom 업데이트 성공.
          + [ ] ganymede v5.21 firmware 가 있는 장비에 lpu23x_00027.rom 업데이트 성공.
          + [ ] europa v1.0 firmware 가 있는 장비에 lpu23x_00027.rom 업데이트 성공.
          + [x] callisto v3.23 firmware 가 있는 장비에 lpu23x_00027.rom 업데이트 성공.
          + [ ] ganymede v5.22 firmware 가 있는 장비에 lpu23x_00027.rom 업데이트 성공.
          + [ ] europa v1.1 firmware 가 있는 장비에 lpu23x_00027.rom 업데이트 성공.
        - raw binary file 선택시.
          + [ ] europa firmware의 interface 라 usb vcom 인 경우, ganymede binary 로 강제 update를 하면, update 후, interface 가 usb keyboard 로 자동 변경.
          + [ ] ganymede firmware의 interface 라 usb keyboard 인 경우, europa binary 로 강제 update를 하면, update 후, interface 가 usb vcom 로 자동 변경.

2. <u>Common tab</u>
    * [x] "Selects Interface" drop list 변경 후, "Apply" 실행시, device interface 변경.
        + [x] lpu237 에서는 usb keyboard interface 있고, usb virtual COM  없음.
        + [ ] lpu238 에서는 usb keyboard interface 없고, usb virtual COM  표시.
    * [ ] "Selects buzzer" drop list 변경 후, "Apply" 실행시, device buzzer on/off.
    * [ ] "Selects language" drop list 변경후, 모든 virtual keyboard 변경.
    * [ ] "Selects i-Button" drop list 는 disable 상태.(BTC reader 전용)
    * [ ] "reading direction" drop list 변경후, MS 카드 읽기 방향 변경.
    * [ ] "track order" drop list 변경후, "USB keyboard mode"에서 만, MS 카드 트랙 표시 순서 변경.
    * [x] "reset interval" drop list, device name - ganymede 와 europa 에서만, enable.
    * [ ] "reset interval" drop list, 변경 후, "Apply" 실행시, reset 시간 변경.
    * [ ] "Enale ISO1" check boox, 변경 후, "Apply" 실행시, ISO1 인지 또는 무시.
    * [ ] "Enale ISO2" check boox, 변경 후, "Apply" 실행시, ISO2 인지 또는 무시.
    * [ ] "Enale ISO3" check boox, 변경 후, "Apply" 실행시, ISO3 인지 또는 무시.
    * [ ] "MSR Global pre/postfix sending condition" group box, "No Error in all track" 선택 적용시, MS 카드 모든 트랙을 에러없이 읽었을 때만(blank 트랙은 정상), Global pre/postfix 가 전송.
    * [ ] "MSR Global pre/postfix sending condition" group box, "One or more track are normal" 선택 적용시, MS 카드 한 개의 트랙이라도 정상으로 읽었을면, Global pre/postfix 가 전송.
    * [ ] "MSR success indication condition" group box, "No Error in all track" 선택 적용시, MS 카드의 모든 트랙을 에러없이 읽었을 때만(blank 트랙은 정상), buzzer 와 LED 가 읽기 성공으로 표시.
    * [ ] "MSR success indication condition" group box, "One or more track are normal" 선택 적용시, MS 카드의 한 개의 트랙이라도 정상으로 읽었을면, buzzer 와 LED 가 읽기 성공으로 표시.
    * [ ] "MSR extension functions" group box, "if track1 is equal to track2 data.don't send track1 data" 선택 적용시, ISO1, 2 의 데이타 동일시, ISO2 만 전송.
    * [ ] "MSR extension functions" group box, "if track3 is equal to track2 data.don't send track3 data" 선택 적용시, ISO3, 2 의 데이타 동일시, ISO2 만 전송.
    * [ ] "MSR extension functions" group box, "if ETXL is 0xe0 and the first character os colon, don't send colon.    " 선택 적용시, 우리증권통장 읽기.
    * [ ] "i-Button/Code sticks" group box, "Send Zeros When i-button is removed" check box 선택 적용시, i-button 제거시, 0 이 16개 표시.
    * [ ] "i-Button/Code sticks" group box, "Send F12 When i-button is removed" check box 선택 적용시, i-button 제거시, F12 키 전송.(test_ibutton.exe 사용)
    * [ ] "i-Button/Code sticks" group box, "Zero is transmitted 7 times When i-button is removed" check box 선택 적용시, i-button 제거시,  0 이 7개 표시.
    * [ ] "i-Button/Code sticks" group box, "Addimat company's Code stick" check box 선택 적용시, i-button 제거시, Code stick protocol에 따라 i-button 데이타 전송.
    * [ ] "i-Button/Code sticks" group box, check box 선택이 없을 때만 "Detail" button 활성화. 
    * [ ] "i-Button/Code sticks" group box, "Detail" button의 설정은 i-button None mode 에서, USB keyboard, USB VCOM, Real COM interface 에만 적용.
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
    * [X] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [X] private Postfix 7개 설정 적용 후, device 에 정상 적용.

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
    * [ ] private Prefix 7개까지 입력.
    * [ ] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [ ] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [ ] private Postfix 7개까지 입력.
    * [ ] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [ ] private Postfix 7개 설정 적용 후, device 에 정상 적용.

8. <u>IB-remove tab</u> - i-button 제거시, 전송되는 키.
    * [ ] 키 20개까지 입력.
    * [ ] "Clear" 실행시, 정의된 키 전부 삭제.
    * [ ] 키 20개 설정 적용 후, Common tab 의 i-Button/Code Sticks group box 가 모두 uncheck 일때 만 정의된 키 전송.

9. <u>IB-rtag tab</u> - 제거시, 전송되는 키에 대한 pre/posfix.
    * [ ] private Prefix 7개까지 입력.
    * [ ] private Prefix "Clear" 실행시, private Prefix 전부 삭제.
    * [ ] private Prefix 7개 설정 적용 후, device 에 정상 적용.
    * [ ] private Postfix 7개까지 입력.
    * [ ] private Postfix "Clear" 실행시, private Prefix 전부 삭제.
    * [ ] private Postfix 7개 설정 적용 후, device 에 정상 적용.

10. <u>setting file</u>
    * [ ] lpu230.xml 파일이 lpu230.exe 와 같은 폴더, %ProgramData%\Elpusk\00000006\lpu230 폴더, 그리고 %ProgramData%\Easyset\00000000\lpu230 폴더에 3개 존재 할때, lpu230.exe 와 같은 폴더에 있는 lpu230.xml 를 사용한다.
    * [ ] lpu230.xml 파일이 %ProgramData%\Elpusk\00000006\lpu230 폴더 그리고 %ProgramData%\Easyset\00000000\lpu230 폴더에 2개 존재 할때, %ProgramData%\Elpusk\00000006\lpu230 폴더에 있는 lpu230.xml 를 사용한다.
    * [ ] lpu230.xml 파일이 %ProgramData%\Easyset\00000000\lpu230 폴더에 1개 존재 할때, %ProgramData%\Easyset\00000000\lpu230 폴더에 있는 lpu230.xml 를 사용한다.
    * [ ] 위 3가지 폴더에 lpu230.xml 이 없으면, default 설정(log file 미생성,update 복구를 위한 임시화일 생성 위치를 lpu230.exe 가 있는 폴더)을 따른다.
    * lpu230.xml "log" element 의 enable attribute 값이 "true" 일 때만 log file를 생성.
    * [ ] lpu230.exe 와 같은 폴더에 있는 lpu230.xml 이 사용될 때, firmware update 복구 파일은 lpu230.exe 와 같은 폴더에 생성.
    * [ ] %ProgramData%\Elpusk\00000006\lpu230 폴더에 있는 lpu230.xml 가 사용 될 때, firmware update 복구 파일은 %ProgramData%\Elpusk\00000006\lpu230\data 폴더에 생성.
    * [ ] %ProgramData%\Easyset\00000000\lpu230 폴더에 있는 lpu230.xml 가 사용 될 때, firmware update 복구 파일은 %ProgramData%\Easyset\00000000\lpu230\data 폴더에 생성.