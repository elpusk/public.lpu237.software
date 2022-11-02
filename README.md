# public.lpu237.software
installer package of lpu237' software.

# information
* date - 2019.12.11
* description
  * lpu230.exe(mapper)는 한 개의 instance 만 허용하도록 수정.
  * 마그네틱 카드 읽는 방향을 설정하기 기능 추가. 가능한 방향은 bidirectional, forward, backward 이고, 각 트랙 마다 설정하지 않고, 한 번에 설정하도록 함.
  * 설정 파일에 “common” element 에 “direction” attribute 추가하여 마그네틱 카드 읽는 방향을 설정 가능 하도록 함.
  * tg_lpu237_fw.dll 파일도 마그네틱 카드 읽는 방향을 설정 기능 지원을 위해 3.0 에서 3.1 로 업데이트.
* version
  * [full 32 bits](./full/x86/lp230_1_8_64.msi)
    - lpu230 SO v1.8.22
    - lpu230 keylock SO v1.14.1
    - Mapper v1.44.0.4
    - Javapos SO v1.11
    - lpu237 api v3.0(tg_lpu237_dll.dll)
    - lpu237 i-button api v3.0(tg_lpu237_ibutton.dll)
    - lpu237 firmware api v3.1(tg_lpu237_fw.dll)
    - manager v1.5( ng_DevManager.exe )
    - controller v1.2.0.1( ng_ManagerCtl.exe )
    - service v1.1.0.1(ng_SSS.exe )
    - DDL v1.0 ( ng_DDL_lpu237.dll )
  * [full 64 bits](./full/x64/lpu230_x64_1_8_64.msi)
    - Mapper v1.44.0.4
    - lpu237 api v3.0(tg_lpu237_dll.dll)
    - lpu237 i-button api v3.0(tg_lpu237_ibutton.dll)
    - lpu237 firmware api v3.1(tg_lpu237_fw.dll)
    - manager v1.5( ng_DevManager.exe )
    - controller v1.2.0.1( ng_ManagerCtl.exe )
    - service v1.1.0.1(ng_SSS.exe )
    - DDL v1.0 ( ng_DDL_lpu237.dll )
  * [mapper only 32 bits](./mapper_only/x86/lpu237_mapper_only_1_44_0.msi)
    - Mapper v1.44.0.4
  * [mapper only 64 bits](./mapper_only/x64/lpu237_mapper_only_x64_1_44_0.msi)
    - Mapper v1.44.0.4
    