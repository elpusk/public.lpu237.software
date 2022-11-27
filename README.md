# public.lpu237.software
installer package of lpu237' software.

# information
* date - 2022.11.28
* description
  * tg_lpu237_tools.dll v1.0 추가를 위한 package.
  * [full 32 bits](./full/x86/lp230_1_8_66.msi) 에 추가됨.
  * [full 64 bits](./full/x64/lpu230_x64_1_8_66.msi) 에 추가됨.
  * [msr only 32 bits](./msr_only/x86/lpu230_msr_only_1_8_66.msi) 에 추가됨.

* version - 각 버전은 같이 설치 불가. 다른 버전 설치시, 기존 버전 제거 후 , 설치. 같은 버전 끼리만 업데이트.(ex 현재 "full 32 bits" 설치되어 있는데 "full 64 bits" 설치하려면, 기존 것 제거 후, 설치.)
  * [full 32 bits](./full/x86/lp230_1_8_66.msi)
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
      - lpu230 SO v1.8.22
      - lpu230 keylock SO v1.14.1
      - Mapper v1.45.0.4
      - Javapos SO v1.11
      - lpu237 api v3.0(tg_lpu237_dll.dll)
      - lpu237 i-button api v3.0(tg_lpu237_ibutton.dll)
      - lpu237 firmware api v3.2(tg_lpu237_fw.dll)
      - lpu237 tools api v1.0(tg_lpu237_tools.dll)
      - manager v1.5( ng_DevManager.exe )
      - controller v1.2.0.1( ng_ManagerCtl.exe )
      - service v1.1.0.1(ng_SSS.exe )
      - DDL v1.0 ( ng_DDL_lpu237.dll )
  * [full 64 bits](./full/x64/lpu230_x64_1_8_66.msi)
    - 지원되는 기능
      - mapper를 통한 설정.
      - native MSR application 지원을 위한 64bits win32 dll.
      - native i-button application 지원을 위한 64bits win32 dll.
      - native firmware application 지원을 위한 64bits win32 dll.
      - 사용자 application 은 MSR 과 i-button 을 독립된 장비로 프로그램 가능.
      - Windows service process( session 0, system account)에서 MSR, i-button 또는 firmware application 지원을 위한 dll 사용 <span style="color:red">불가능</span>.
    - 포함된 components
      - Mapper v1.45.0.4
      - lpu237 api v3.0(tg_lpu237_dll.dll)
      - lpu237 i-button api v3.0(tg_lpu237_ibutton.dll)
      - lpu237 firmware api v3.2(tg_lpu237_fw.dll)
      - lpu237 tools api v1.0(tg_lpu237_tools.dll)
      - manager v1.5( ng_DevManager.exe )
      - controller v1.2.0.1( ng_ManagerCtl.exe )
      - service v1.1.0.1(ng_SSS.exe )
      - DDL v1.0 ( ng_DDL_lpu237.dll )
  * [mapper only 32 bits](./mapper_only/x86/lpu237_mapper_only_1_45_0.msi)
    - 지원되는 기능
      - mapper를 통한 설정.
    - 포함된 component
      - Mapper v1.45.0.4
  * [mapper only 64 bits](./mapper_only/x64/lpu237_mapper_only_x64_1_45_0.msi)
    - 지원되는 기능
      - mapper를 통한 설정.
    - 포함된 component
      - Mapper v1.45.0.4
  * [msr only 32 bits](./msr_only/x86/lpu230_msr_only_1_8_66.msi)
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
      - Mapper v1.45.0.4
      - Javapos SO v1.11
      - lpu237 api v1.6(tg_lpu237_dll.dll)
      - lpu237 i-button api v3.0(tg_lpu237_ibutton.dll)
      - lpu237 firmware api v3.2(tg_lpu237_fw.dll)
      - lpu237 tools api v1.0(tg_lpu237_tools.dll)
      - manager v1.5( ng_DevManager.exe )
      - controller v1.2.0.1( ng_ManagerCtl.exe )
      - service v1.1.0.1(ng_SSS.exe )
      - DDL v1.0 ( ng_DDL_lpu237.dll )
  * lpu230_update : 고객 특별 요청으로 2019.12.11 부터 배포. Mapper 설치 없이, rom 파일로, lpu237 firmware 를 업데이트하는 프로그램.
    - 지원되는 기능
      - lpu237 firmware 업데이트.
    - 포함된 components
	    - lpu230_update.exe v1.1 : 프로그램 본체.
	    - ng_DDL_hid.dll :  lpu230_update.exe 에서 사용하는 라이브러리.
	    - tg_rom.dll  :  lpu230_update.exe 에서 사용하는 라이브러리.
	    - lpu230_update_UM_EN_002.pdf : 프로그램 사용 설명서 영문.
	    - lpu230_update_UM_KOR_002.pdf : 프로그램 사용 설명서 국문.
-----------

    