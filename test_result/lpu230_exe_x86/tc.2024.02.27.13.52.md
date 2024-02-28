# Mapper(lpu230.exe) test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* Mapper version - 1.48.0.4, 32 bits

* the tested device
  * [x] lpu237-C type ganymede
  * [ ] lpu237-D type ganymede
  * [ ] lpu237-F00NU type ganymede

* the tested Firmware version.
  * lpu237_5_22_0_1.rom.rom = v5.22.0.1(ganymede)

## test case
1. <u>Device tab</u>
    * "information" group box 선택에 따라, "Selects Device" 실행시, 정보가 표시
      + [x] "simple info" - device firmware 가 mmd1100 iso mode 설정 지원하면, iso mode 표시.
      + [x] "vailed info" - device firmware 가 mmd1100 iso mode 설정 지원하면, iso mode 표시.
      + [x] "full info" - device firmware 가 mmd1100 iso mode 설정 지원하면, iso mode 표시.
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
        + [x] mapper 1.47.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.47.0.4.xml)
        + [x] mapper 1.48.0.4 에서 지원하는 모든 attribute 가 데이터를 가진 파일 사용.(full.1.48.0.4.xml)
    * "Setting File" group box, "Save" 실행시, ini 또는 xml 이 생성.
      + [x] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 txt로 저장.
        - v1.43.0.4 에서 지원되는 attribute 만 저장됨.
        - Mapper v1.43.0.4 에서 정상 로드.
      + [x] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 txt로 저장.
        - v1.44.0.4 에서 지원되는 attribute 만 저장됨.
        - Mapper v1.44.0.4 에서 정상 로드.
      + [x] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 xml로 저장. 경고창에서 Yes.
        - v1.48.0.4 에서 지원되는 attribute 저장됨.
      + [x] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 xml로 저장. 경고창에서 Yes.
        - v1.48.0.4 에서 지원되는 attribute 저장됨. 
      + [x] "the format of sample setting file is used in v1.43.0.4" check 후, 확장자 xml로 저장. 경고창에서 No.
        - v1.46.0.4 에서 지원되는 attribute 까지만 저장됨(ibutton_start, ibutton_end attributes, mmd1100_iso_mode 제외됨).
      + [x] "the format of sample setting file is used in v1.43.0.4" uncheck 후, 확장자 xml로 저장. 경고창에서 No.
        - v1.46.0.4 에서 지원되는 attribute 까지만 저장됨(ibutton_start, ibutton_end attributes, mmd1100_iso_mode 제외됨).

    * "Updates Firmware" 실행시, Firmware 변경.
      + rom file 선택시, Device name이 같고, firmare 의 버전이 현재 system version 이상 일때 만 업데이트 시작.
          - [x] ganymede v5.22 firmware 가 있는 장비에 lpu237_5_22_0_1.rom 업데이트 성공.
