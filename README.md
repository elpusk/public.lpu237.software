# public.lpu237.software

installer package of lpu23x' software.
[history](./doc/history_lpu23x.md)

# TIP!

* tg_lpu237_x.dll or OPOS 사용시, 이상하면, <span style="color:green">interface 를 USB HID Vendor 로 바꿔보세요.</span>

# information

* date - 2026.09.23
* description
  * 정식 release
    - lpu238 elara(MH1902T 마이컴 사용, virtual COM 지원) 지원을 위해 tg_lpu237_x.dll 업데이트
    - 상기 이유로 [full 32 bits](./full/x86/lpu230_1_8_74.msi) 를  버전 1.8.74로 업데이트.
    - 상기 이유로 [full 64 bits](./full/x64/lpu230_x64_1_8_74.msi) 를  버전 1.8.74로 업데이트.
    - 상기 이유로 [msr only 32 bits](./msr_only/x86/lpu230_msr_only_1_8_74.msi) 를  버전 1.8.74로 업데이트.
    - 상기 이유로 [mapper only 32 bits](./mapper_only/x86/lpu237_mapper_only_1_50_0.msi) 를 버전 1.50.0로 업데이트.
    - 상기 이유로 [mapper only 64 bits](./mapper_only/x64/lpu237_mapper_only_x64_1_50_0.msi) 를 버전 1.50.0로 업데이트.

* version - 각 버전은 같이 설치 불가. 다른 버전 설치시, 기존 버전 제거 후 , 설치. 같은 버전 끼리만 업데이트.(ex 현재 "full 32 bits" 설치되어 있는데 "full 64 bits" 설치하려면, 기존 것 제거 후, 설치.)
  * [full 32 bits](./full/x86/lpu230_1_8_74.msi) 버전 1.8.73, [SBOM-cyclonedx](./full/x86/lp230-wix-sbom-cyclonedx.json), [SBOM-spdx](./full/x86/lp230-wix-sbom-spdx.json)
    - 지원되는 기능
      - mapper를 통한 설정.
      - MSR & i-button [OPOS](http://monroecs.com/index.htm) service object(이하 SO).
      - native MSR application 지원을 위한 32bits win32 dll.
      - native i-button application 지원을 위한 32bits win32 dll.
      - native firmware application 지원을 위한 32bits win32 dll.
      - 사용자 application 은 MSR 과 i-button 을 독립된 장비로 프로그램 가능.
      - Windows service process( session 0, system account)에서 OPOS Common Control Objects(이하 CCO)를 사용할 경우, 제공되는 SO 사용 <span style="color:red">불가능</span>.
      - Windows service process( session 0, system account)에서 MSR, i-button 또는 firmware application 지원을 위한 dll 사용 <span style="color:red">불가능</span>.
    - 포함된 components
      - lpu230 SO v1.8.23(OposLpu230.dll)
      - lpu230 keylock SO v1.14.2(OposLpu230Lock.dll)
      - Mapper v1.50.0.4
      - Javapos SO v1.11
      - lpu237 api v5.1(tg_lpu237_dll.dll)
      - lpu237 i-button api v5.1(tg_lpu237_ibutton.dll)
      - lpu237 firmware api v5.1(tg_lpu237_fw.dll)
      - lpu237 tools api v5.1(tg_lpu237_tools.dll)
      - manager v1.8( ng_DevManager.exe )
      - controller v1.2.0.1( ng_ManagerCtl.exe )
      - service v1.1.0.1(ng_SSS.exe )
      - DDL v1.1 ( ng_DDL_lpu237.dll )
  * [full 64 bits](./full/x64/lpu230_x64_1_8_74.msi) 버전 1.8.73, [SBOM-cyclonedx](./full/x64/lp230-x64-wix-sbom-cyclonedx.json), [SBOM-spdx](./full/x64/lp230-x64-wix-sbom-spdx.json)
    - 지원되는 기능
      - mapper를 통한 설정.
      - native MSR application 지원을 위한 64bits win32 dll.
      - native i-button application 지원을 위한 64bits win32 dll.
      - native firmware application 지원을 위한 64bits win32 dll.
      - 사용자 application 은 MSR 과 i-button 을 독립된 장비로 프로그램 가능.
      - Windows service process( session 0, system account)에서 MSR, i-button 또는 firmware application 지원을 위한 dll 사용 <span style="color:red">불가능</span>.
    - 포함된 components
      - Mapper v1.50.0.4
      - lpu237 api v5.1(tg_lpu237_dll.dll)
      - lpu237 i-button api v5.1(tg_lpu237_ibutton.dll)
      - lpu237 firmware api v5.1(tg_lpu237_fw.dll)
      - lpu237 tools api v5.1(tg_lpu237_tools.dll)
      - manager v1.8( ng_DevManager.exe )
      - controller v1.2.0.1( ng_ManagerCtl.exe )
      - service v1.1.0.1(ng_SSS.exe )
      - DDL v1.1 ( ng_DDL_lpu237.dll )
  * [mapper only 32 bits](./mapper_only/x86/lpu237_mapper_only_1_50_0.msi) 버전 1.50.0, [SBOM-cyclonedx](./mapper_only/x86/lpu237-mapper-only-wix-sbom-cyclonedx.json),  [SBOM-spdx](./mapper_only/x86/lpu237-mapper-only-wix-sbom-spdx.json)
    - 지원되는 기능
      - mapper를 통한 설정.
    - 포함된 component
      - Mapper v1.50.0.4
  * [mapper only 64 bits](./mapper_only/x64/lpu237_mapper_only_x64_1_50_0.msi) 버전 1.50.0,  [SBOM-cyclonedx](./mapper_only/x64/lp237-mapper-only-x64-wix-sbom-cyclonedx.json),  [SBOM-spdx](./mapper_only/x64/lp237-mapper-only-x64-wix-sbom-spdx.json)
    - 지원되는 기능
      - mapper를 통한 설정.
    - 포함된 component
      - Mapper v1.50.0.4
  * [msr only 32 bits](./msr_only/x86/lpu230_msr_only_1_8_74.msi) 버전 1.8.74,  [SBOM-cyclonedx](./msr_only/x86/lp230-msr-only-wix-sbom-cyclonedx.json),  [SBOM-spdx](./msr_only/x86/lp230-msr-only-wix-sbom-spdx.json)
    - 주의 : <span style="color:red">MSR SO 는 독립적으로 장비에 접근하기 때문에, 프로그래밍 설계방식에 따라 tg_lpu237_tools.dll 사용시 동기화 문제 발생 소지가 있음.</span>.
    - 지원되는 기능
      - mapper를 통한 설정.
      - MSR [OPOS](http://monroecs.com/index.htm) SO.
      - native MSR application 지원을 위한 32bits win32 dll.
      - native firmware application 지원을 위한 32bits win32 dll.
      - 사용자 application 은 MSR 만 프로그램 가능.
      - Windows service process( session 0, system account)에서 OPOS CCO를 사용할 경우도, 제공되는 SO 사용 가능.(NCR Device Services API 에서 사용 가능.)
      - Windows service process( session 0, system account)에서 MSR application 지원을 위한 dll 사용 가능.
      - Windows service process( session 0, system account)에서 firmware application 지원을 위한 dll 사용 <span style="color:red">불가능</span>.
    - 포함된 components
      - lpu230 SO v1.8.22
      - Mapper v1.50.0.4
      - Javapos SO v1.11
      - lpu237 api v5.1(tg_lpu237_dll.dll)
      - lpu237 i-button api v5.1(tg_lpu237_ibutton.dll)
      - lpu237 firmware api v5.1(tg_lpu237_fw.dll)
      - lpu237 tools api v5.1(tg_lpu237_tools.dll)
      - manager v1.8( ng_DevManager.exe )
      - controller v1.2.0.1( ng_ManagerCtl.exe )
      - service v1.1.0.1(ng_SSS.exe )
      - DDL v1.1 ( ng_DDL_lpu237.dll )
  * lpu230_update : 고객 특별 요청으로 2019.12.11 부터 배포. Mapper 설치 없이, rom 파일로, lpu237 firmware 를 업데이트하는 프로그램.
    - 지원되는 기능
      - lpu237 firmware 업데이트.
      - [더 자세한 내용은 여기](https://github.com/elpusk/public.lpu237.firmware)
    - 포함된 components
	    - lpu230_update.exe v1.5 : 프로그램 본체.( 2024.04.18 v1.5로 업데이트)
	    - ng_DDL_hid.dll :  lpu230_update.exe 에서 사용하는 라이브러리.
	    - tg_rom.dll  :  lpu230_update.exe 에서 사용하는 라이브러리.
	    - lpu230_update_UM_EN_006.pdf : 프로그램 사용 설명서 영문.
	    - lpu230_update_UM_KOR_006.pdf : 프로그램 사용 설명서 국문.
      - lpu230_update_v1.5.zip : 압축파일( lpu230_update.exe, ng_DDL_hid.dll,tg_rom.dll, lpu230_update_UM_EN_006.pdf 과 lpu230_update_UM_KOR_006.pdf )

  * 기타
    - 문서
      - 고객 요청에 따른 lpu230_api_tools_UM_KOR_V5.1.pdf 의 영문판 [lpu230_api_tools_UM_KOR_V5.1.pdf](./doc/lpu230_api_tools_UM_KOR_V5.1.pdf).
        - lpu230_api_tools_UM_EN_V4.1.pdf 에서 lpu230_api_tools_UM_EN_V5.1.pdf 으로 업데이트됨.
      - 고객 요청에 따른 lpu230_fw_api_UM_EN_V5.1.pdf 의 영문판 [lpu230_fw_api_UM_EN_008.pdf](./doc/lpu230_fw_api_UM_EN_V5.1.pdf).
        - lpu230_fw_api_UM_EN_007.pdf 에서 lpu230_fw_api_UM_EN_V5.1.pdf 으로 업데이트됨.

# etc

* mapper 1.50 이상(이하 mapper) 을 가지고, lpu237 를 lpu238 로 변경 하기.(비권장)
  - 확장자가 rom 인 파일(이하 rom 파일)로 업데이트를 하면, 안정성을 위해 동일한 system name 과 update condition 이 만족 할 때만 업데이트를 허용 합니다.
  - lpu237 은 서로 다른 하드웨어를 기반으로한 callisto, ganymede, himalia 라는 세 개의 system name이 있고, lpu238 은 lpu237 의  ganymede 와 하드웨어는 동일 하지만, 전혀 다른 interface 를 가진 장비로 PC에서 인식하고, europa 라는 system name 를 갖는 제품과 lpu237 의 himalia 와 하드웨어는 동일 하지만, 전혀 다른 interface 를 가진 장비로 PC에서 인식하고, elara 라는 system name 를 갖는 제품이 있습니다. 따라서 mapper 에서 rom 파일로  lpu237 를 lpu238 로 변경은 불가능 합니다. 이런 안전성을 무시하고, mapper에서 , lpu237 를 lpu238 로 변경하기 위해서는 아래와 같이.......
    - https://github.com/elpusk/public.lpu237.firmware 에서 lpu23x_00037_sbom.zip 를 다운받아서 
lpu23x_00037.rom 이라는 rom 파일을 얻음.
    - mapper 실행.(mapper 1.50 이상)
    - "Selects Device" 선택(lpu238 변경하고자 하는 lpu237 선택).
    - 하단 "Information" group box 에서 "full info" 선택. ![select_full_info.jpg](./img/select_full_info.jpg)
    - "Updates Firmware" 선택.![select_advance_mode_open.jpg](./img/select_advance_mode_open.jpg)
    - "파일 선택" 대화 상자에서 lpu23x_00037.rom 파일 선택 후,
      - 하단 dropbox 에서 현재 lpu237 이 ganymede 면 europa 선택.
      - 하단 dropbox 에서 현재 lpu237 이 himalia 면 elara 선택.
    - 업데이트 완료까지 기다림.

*  lpu238 를  lpu237 로 변경.(비권장)
   - 위 과정과 동일하며, "파일 선택" 대화 상자에서 lpu23x_00037.rom 파일 선택 후,
     - 하단 dropbox 에서 현재 lpu238 이 europa 면 ganymede 선택.
     - 하단 dropbox 에서 현재 lpu238 이 elara 면 himalia 선택.

-----------

    