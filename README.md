# public.lpu237.software
installer package of lpu237' software.

# information
* date - 2022.08.21
* description
  * MSR only install package 처음 제작
  * 일반 package1.8.64 에서 i-button 관련 component 제거. MSR 만 있는 lpu237 제품을 위한 것.
  * 일반 package1.8.64 의 tg_lpu237_dll.dll v3.0을 NDM 을 사용하지 않는 최종 버전 v1.6으로 교체.
  * NCR Device Services API 가 OPOS 의 service object를 통해 tg_lpu237_dll.dll 사용시 문제 회피를 위한 제작.
  * OPOS 관련 문제 해결을 위한 임시로 추가된 package 이므로 OPOS service object 지원이 없는 64비트 package 는 없음.
* version
  * [msr only 32 bits](./msr_only/x86/lpu230_msr_only_1_8_64.msi)
    - lpu230 SO v1.8.22
    - Mapper v1.44.0.4
    - Javapos SO v1.11
    - lpu237 api v1.6(tg_lpu237_dll.dll)
    - lpu237 firmware api v3.1(tg_lpu237_fw.dll)
    - manager v1.5( ng_DevManager.exe )
    - controller v1.2.0.1( ng_ManagerCtl.exe )
    - service v1.1.0.1(ng_SSS.exe )
    - DDL v1.0 ( ng_DDL_lpu237.dll )
    