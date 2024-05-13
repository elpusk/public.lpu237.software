# lpu23x windows software history

## 2024.05.13 - lpu230_1_8_73.msi, lpu230_x64_1_8_73.msi, lpu230_msr_only_1_8_73.msi
 - lpu237 himalia v2.0 부터 추가된 암호화 기능 지원을 위해 tg_lpu237_x.dll 업데이트.
 - lpu237 himalia 암호화 기능 지원을 위해 ng_DevManager.exe 를 v1.7 -> v1.8.
 - lpu237 himalia 암호화 기능 지원을 위해 tg_lpu237_dll.dll v4.3 -> v5.0.
 - lpu237 himalia 암호화 기능 지원을 위해 tg_lpu237_fw.dll v4.3 -> v5.0.
 - lpu237 himalia 암호화 기능 지원을 위해 tg_lpu237_ibutton.dll v4.3 -> v5.0.
 - lpu237 himalia 암호화 기능 지원을 위해 tg_lpu237_tools.dll v4.3 -> v5.0.

## 2024.04.16 - lpu230_1_8_72.msi, lpu230_x64_1_8_72.msi, lpu230_msr_only_1_8_72.msi
 - ng_DevManager.exe 에서 LPARAM 타입을 DWORD 로 강제 타입 캐스팅해서 발생한 문제 해결을 위해 ng_DevManager.exe 버전을 v1.6 에서 v1.7로 업데이트.(x64 에서만 발생하지만 코드 변경이유로 x86 도 업데이트)
 - ng_DevManager.exe 를 v1.6 -> v1.7.

## 2024.04.16 - lpu230_1_8_71.msi, lpu230_x64_1_8_71.msi, lpu230_msr_only_1_8_71.msi
 - lpu237 himalia device 지원을 위해 mapper 를 1.49.0.1 로 업데이트.
 - lpu237 himalia device 지원을 위해 tg_lpu237_dll.dll v4.2 -> v4.3.
 - lpu237 himalia device 지원을 위해 tg_lpu237_fw.dll v4.2 -> v4.3.
 - lpu237 himalia device 지원을 위해 tg_lpu237_ibutton.dll v4.2 -> v4.3.
 - lpu237 himalia device 지원을 위해 tg_lpu237_tools.dll v4.2 -> v4.3.

## 2024.04.16 - lpu237_mapper_only_1_49_0.msi, lpu237_mapper_only_x64_1_49_0.msi
 - lpu237 himalia device 지원을 위해 mapper 를 1.49.0.1 로 업데이트.

## 2024.02.28 - lp230_1_8_70.msi
 - 32 bits full version. lp230_1_8_69.msi -> lp230_1_8_70.msi 로 업데이트.
 - 64 bits full version. lpu230_x64_1_8_69.msi -> lpu230_x64_1_8_70.msi 로 업데이트.
 - 32 bits mapper only version. lpu237_mapper_only_1_47_1.msi -> lpu237_mapper_only_1_48_0.msi 로 업데이트.
 - 64 bits mapper only version. lpu237_mapper_only_x64_1_47_1.msi -> lpu237_mapper_only_x64_1_48_0.msi 로 업데이트.
 - 32 bits msr only version. lpu230_msr_only_1_8_69.msi -> lpu230_msr_only_1_8_70.msi 로 업데이트.
 - mapper 1.48.0.4 로 업데이트.
 - mmd1100 decoder iso mode 변경 지원. 
 - tg_lpu237_dll.dll v4.1 -> v4.2.
   - 공용 라이브러리 업데이트에 따른 단순 버전업, 리빌드.
 - tg_lpu237_fw.dll v4.1 -> v4.2.
   - mmd1100 decoder iso mode 변경 지원을 위해 추가된 system parameter 지원.
 - tg_lpu237_ibutton.dll v4.1 -> v4.2.
   - 공용 라이브러리 업데이트에 따른 단순 버전업, 리빌드.
 - tg_lpu237_tools.dll v4.1 -> v4.2.
   - 설정 변경 후, 자동 decoder 검출, 초기화 기능 추가.
 - lpu230_api_tools_UM_KOR_V4.1.pdf -> lpu230_api_tools_UM_KOR_V4.2.pdf
 - lpu230_mapper_UM_EN_025.pdf -> lpu230_mapper_UM_EN_026.pdf
 - lpu230_mapper_UM_KOR_026.pdf -> lpu230_mapper_UM_KOR_026.pdf
 - lpu237_setting_file_EN_005.pdf -> lpu237_setting_file_EN_006.pdf
 - lpu237_setting_file_KOR_005.pdf -> lpu237_setting_file_KOR_006.pdf
 - lpu230_api_UM_EN_003.pdf -> lpu230_api_UM_EN_004.pdf
 - lpu230_fw_api_UM_KOR_006.pdf -> lpu230_fw_api_UM_KOR_008.pdf
 - lpu237_api_ibutton_UM_EN_004.pdf -> lpu237_api_ibutton_UM_EN_005.pdf

## 2023.10.24 - mapper(lpu230.exe) v1.47.0.4 의 중대한 code missing 으로 v1.47.1.4 로 업데이트.
 - 32 bits full version. lp230_1_8_68.msi -> lp230_1_8_69.msi 로 업데이트.
 - 64 bits full version. lpu230_x64_1_8_68.msi -> lpu230_x64_1_8_69.msi 로 업데이트.
 - 32 bits mapper only version. lpu237_mapper_only_1_47_0.msi -> lpu237_mapper_only_1_47_1.msi 로 업데이트.
 - 64 bits mapper only version. lpu237_mapper_only_x64_1_47_0.msi -> lpu237_mapper_only_x64_1_47_1.msi 로 업데이트.
 - 32 bits msr only version. lpu230_msr_only_1_8_68.msi -> lpu230_msr_only_1_8_69.msi 로 업데이트.
 - i-button range 선택(1.47.0.4에서 추가)하는 dialog 에서 색깔변경을 위해 생성한 windows brush resource 를 제거하는 코드가 없어서, brush 누수가 누적되면 mapper 가 집에 감 -> 수정됨.

## 2023.10.24 - lp230_1_8_68.msi
- 32 bits full version.
- mapper 1.47.0.4 로 업데이트.
  - i-button 전송 범위 설정 기능 지원. 
  - advance firmware update mode 지원.
  - firmware update 중 오류복구의 위한 임시파일 생성 위치를 %ProgramData%\Easyset\00000000\lpu237\data 로 변경.
  - 설정파일 %ProgramData%\Easyset\00000000\lpu237\lpu.xml 추가.
  - uninstall 시, %ProgramData%\Easyset\00000000\lpu237 에 추가되는 파일 삭제를 위해 lpu230_config.exe 추가.
- tg_lpu237_dll.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_fw.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_ibutton.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_tools.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- lpu230_api_tools_UM_KOR_V4.0.pdf -> lpu230_api_tools_UM_KOR_V4.1.pdf
- lpu230_mapper_UM_EN_024.pdf -> lpu230_mapper_UM_EN_025.pdf
- lpu230_mapper_UM_KOR_024.pdf -> lpu230_mapper_UM_KOR_025.pdf
- lpu237_setting_file_EN_004.pdf -> lpu237_setting_file_EN_005.pdf
- lpu237_setting_file_KOR_004.pdf -> lpu237_setting_file_KOR_005.pdf

## 2023.10.24 - lpu230_x64_1_8_68.msi
- 64 bits full version.
- mapper 1.47.0.4 로 업데이트.
  - i-button 전송 범위 설정 기능 지원. 
  - advance firmware update mode 지원.
  - firmware update 중 오류복구의 위한 임시파일 생성 위치를 %ProgramData%\Easyset\00000000\lpu237\data 로 변경.
  - 설정파일 %ProgramData%\Easyset\00000000\lpu237\lpu.xml 추가.
  - uninstall 시, %ProgramData%\Easyset\00000000\lpu237 에 추가되는 파일 삭제를 위해 lpu230_config.exe 추가.
- tg_lpu237_dll.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_fw.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_ibutton.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_tools.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- lpu230_api_tools_UM_KOR_V4.0.pdf -> lpu230_api_tools_UM_KOR_V4.1.pdf
- lpu230_mapper_UM_EN_024.pdf -> lpu230_mapper_UM_EN_025.pdf
- lpu230_mapper_UM_KOR_024.pdf -> lpu230_mapper_UM_KOR_025.pdf
- lpu237_setting_file_EN_004.pdf -> lpu237_setting_file_EN_005.pdf
- lpu237_setting_file_KOR_004.pdf -> lpu237_setting_file_KOR_005.pdf

## 2023.10.24 - lpu237_mapper_only_1_47_0.msi
- 32 bits mapper only version.
- mapper 1.47.0.4 로 업데이트.
  - i-button 전송 범위 설정 기능 지원. 
  - advance firmware update mode 지원.
  - firmware update 중 오류복구의 위한 임시파일 생성 위치를 %ProgramData%\Easyset\00000000\lpu237\data 로 변경.
  - 설정파일 %ProgramData%\Easyset\00000000\lpu237\lpu.xml 추가.
  - uninstall 시, %ProgramData%\Easyset\00000000\lpu237 에 추가되는 파일 삭제를 위해 lpu230_config.exe 추가.
- lpu230_mapper_UM_EN_024.pdf -> lpu230_mapper_UM_EN_025.pdf
- lpu230_mapper_UM_KOR_024.pdf -> lpu230_mapper_UM_KOR_025.pdf
- lpu237_setting_file_EN_004.pdf -> lpu237_setting_file_EN_005.pdf
- lpu237_setting_file_KOR_004.pdf -> lpu237_setting_file_KOR_005.pdf

## 2023.10.24 - lpu237_mapper_only_x64_1_47_0.msi
- 64 bits mapper only version.
- mapper 1.47.0.4 로 업데이트.
  - i-button 전송 범위 설정 기능 지원. 
  - advance firmware update mode 지원.
  - firmware update 중 오류복구의 위한 임시파일 생성 위치를 %ProgramData%\Easyset\00000000\lpu237\data 로 변경.
  - 설정파일 %ProgramData%\Easyset\00000000\lpu237\lpu.xml 추가.
  - uninstall 시, %ProgramData%\Easyset\00000000\lpu237 에 추가되는 파일 삭제를 위해 lpu230_config.exe 추가.
- lpu230_mapper_UM_EN_024.pdf -> lpu230_mapper_UM_EN_025.pdf
- lpu230_mapper_UM_KOR_024.pdf -> lpu230_mapper_UM_KOR_025.pdf
- lpu237_setting_file_EN_004.pdf -> lpu237_setting_file_EN_005.pdf
- lpu237_setting_file_KOR_004.pdf -> lpu237_setting_file_KOR_005.pdf

## 2023.10.24 - lpu230_msr_only_1_8_68.msi
- 32 bits msr only version.
- mapper 1.47.0.4 로 업데이트.
  - i-button 전송 범위 설정 기능 지원. 
  - advance firmware update mode 지원.
  - firmware update 중 오류복구의 위한 임시파일 생성 위치를 %ProgramData%\Easyset\00000000\lpu237\data 로 변경.
  - 설정파일 %ProgramData%\Easyset\00000000\lpu237\lpu.xml 추가.
  - uninstall 시, %ProgramData%\Easyset\00000000\lpu237 에 추가되는 파일 삭제를 위해 lpu230_config.exe 추가.
- tg_lpu237_dll.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_fw.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_ibutton.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- tg_lpu237_tools.dll v4.0 -> v4.1.
  - i-button 전송 범위 설정 기능 지원. 
- lpu230_api_tools_UM_KOR_V4.0.pdf -> lpu230_api_tools_UM_KOR_V4.1.pdf
- lpu230_mapper_UM_EN_024.pdf -> lpu230_mapper_UM_EN_025.pdf
- lpu230_mapper_UM_KOR_024.pdf -> lpu230_mapper_UM_KOR_025.pdf
- lpu237_setting_file_EN_004.pdf -> lpu237_setting_file_EN_005.pdf
- lpu237_setting_file_KOR_004.pdf -> lpu237_setting_file_KOR_005.pdf

## 2023.09.26 – lpu230_msr_only_1_8_67.msi
- 32 bits msr only version.
- lpu238 지원 및 버그 수정.
- mapper 1.46.0.4 로 업데이트.
  - lpu238(europa) 지원.
- ng_DDL_lpu237.dll v1.0 -> v1.1.
  - lpu238(europa) 지원.
  - HidD_GetAttributes() 함수 에러 발생시, 다음 장비 찾기 계속
- ng_DevManager.exe v1.5 -> v1.6.
  - 일부 system에서 booting 시, 장비 인식 못하는 문제 수정. 처음 실행하고, 장비가 없으면, 장비 인식 될때 까지, polling 으로 주기적으로 장비 확인.
- tg_lpu237_dll.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_fw.dll v3.2 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_ibutton.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_tools.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- OposLpu230.dll v1.8.22 -> updated v1.8.23.
  - ini 로딩 방법 변경.
- OposLpu230.ini 삭제.
  - OposLpu230.ini 의 session & key 는 lpu230.ini (MyDocument\Easyset\lpu230)으로 이동함.
- lpu230_api_tools_UM_KOR_V1.0.pdf -> lpu230_api_tools_UM_KOR_V4.0.pdf
- lpu230_api_UM_EN_002.pdf -> lpu230_api_UM_EN_003.pdf
- lpu230_fw_api_UM_KOR_005.pdf -> lpu230_fw_api_UM_KOR_006.pdf
- lpu230_mapper_UM_EN_023.pdf -> lpu230_mapper_UM_EN_024.pdf
- lpu230_mapper_UM_KOR_023.pdf -> lpu230_mapper_UM_KOR_024.pdf
- lpu237_api_ibutton_UM_EN_002.pdf -> lpu237_api_ibutton_UM_EN_004.pdf
- lpu237_setting_file_EN_003.pdf -> lpu237_setting_file_EN_004.pdf
- lpu237_setting_file_KOR_003.pdf -> lpu237_setting_file_KOR_004.pdf
- tg_lpu237_dll.dll v4.0 을 강제로 direct mode 로 구동하기 위해, %ProgramData%\Easyset\00000000\tg_lpu237_dll\tg_lpu237_dll.ini 추가.

## 2023.09.26 – lpu230_x64_1_8_67.msi
- 64 bits full version.
- lpu238 지원 및 버그 수정.
- mapper 1.46.0.4 로 업데이트.
  - lpu238(europa) 지원.
- ng_DDL_lpu237.dll v1.0 -> v1.1.
  - lpu238(europa) 지원.
  - HidD_GetAttributes() 함수 에러 발생시, 다음 장비 찾기 계속
- ng_DevManager.exe v1.5 -> v1.6.
  - 일부 system에서 booting 시, 장비 인식 못하는 문제 수정. 처음 실행하고, 장비가 없으면, 장비 인식 될때 까지, polling 으로 주기적으로 장비 확인.
- tg_lpu237_dll.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_fw.dll v3.2 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_ibutton.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_tools.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- lpu230_api_tools_UM_KOR_V1.0.pdf -> lpu230_api_tools_UM_KOR_V4.0.pdf
- lpu230_api_UM_EN_002.pdf -> lpu230_api_UM_EN_003.pdf
- lpu230_fw_api_UM_KOR_005.pdf -> lpu230_fw_api_UM_KOR_006.pdf
- lpu237_api_ibutton_UM_EN_002.pdf -> lpu237_api_ibutton_UM_EN_004.pdf
- tg_lpu237_v3.0.zip -> tg_lpu237_v4.0.zip
- test_tg_lpu237_ibutton_v3.0 -> test_tg_lpu237_ibutton_v4.0

## 2023.09.26 – lp230_1_8_67.msi
- 32 bits full version.
- lpu238 지원 및 버그 수정.
- mapper 1.46.0.4 로 업데이트.
  - lpu238(europa) 지원.
- ng_DDL_lpu237.dll v1.0 -> v1.1.
  - lpu238(europa) 지원.
  - HidD_GetAttributes() 함수 에러 발생시, 다음 장비 찾기 계속
- ng_DevManager.exe v1.5 -> v1.6.
  - 일부 system에서 booting 시, 장비 인식 못하는 문제 수정. 처음 실행하고, 장비가 없으면, 장비 인식 될때 까지, polling 으로 주기적으로 장비 확인.
- tg_lpu237_dll.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_fw.dll v3.2 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_ibutton.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- tg_lpu237_tools.dll v3.0 -> v4.0.
  - lpu238(europa) 지원.
  - ini 로딩 방법 변경.
- OposLpu230Lock.dll v1.14.1 -> v1.14.2.
  - ini 로딩 방법 변경.
  - ini 설정에 따라 pos.for.net, set binary conversion 에서 발생하는 exception 발생하지 않도록 할 수 있도록 함.
  - ini 설정에 따라 pos.for.net, key 값이 잘못 decoding 되는 문제 발생하지 않도록 할 수 있도록 함.
- OposLpu230Lock.ini 삭제.
  - OposLpu230Lock.ini 의 session & key 는 lpu230Lock.ini (MyDocument\Easyset\lpu230)으로 이동함.
- OposLpu230.dll v1.8.22 -> updated v1.8.23.
  - ini 로딩 방법 변경.
- OposLpu230.ini 삭제.
  - OposLpu230.ini 의 session & key 는 lpu230.ini (MyDocument\Easyset\lpu230)으로 이동함.
- lpu230_api_tools_UM_KOR_V1.0.pdf -> lpu230_api_tools_UM_KOR_V4.0.pdf
- lpu230_api_UM_EN_002.pdf -> lpu230_api_UM_EN_003.pdf
- lpu230_fw_api_UM_KOR_005.pdf -> lpu230_fw_api_UM_KOR_006.pdf
- lpu237_api_ibutton_UM_EN_002.pdf -> lpu237_api_ibutton_UM_EN_004.pdf
- tg_lpu237_v3.0.zip -> tg_lpu237_v4.0.zip
- test_tg_lpu237_ibutton_v3.0 -> test_tg_lpu237_ibutton_v4.0
- test_opos_lock.exe v1.2 -> test_opos_lock.exe v1.3,
  - OposLpu230Lock.dll v1.14.2 지원.

## 2023.08.09 – lpu237_mapper_only_x64_1_46_0.msi
- x64(64 bits) 용 mapper only 설치 프로그램 배포.
- mapper(lpu230.exe) 는 lpu238 지원을 위해 1.46.0.4 로 업데이트.

## 2023.08.09 – lpu237_mapper_only_1_46_0.msi
- x86(32 bits) 용 mapper only 설치 프로그램 배포.
- mapper(lpu230.exe) 는 lpu238 지원을 위해 1.46.0.4 로 업데이트.

## 2022.11.28 – tg_lpu237_tools.dll v1.0 추가를 위한 업데이트.
- 포스뱅크에서 개발 중인 통합 설정 및 테스트 프로그램 지원을 위해 tg_lpu237_tools.dll v1.0 이 full 32/64비트 버전 및 MSR only 버전에 추가되어 package v1.8.66 으로 업데이트됨.
- Mapper only 버전은 변경 사항 없음.

## 2022.11.11 – mapper 1.45.0.4 를 위한 업데이트.
- mapper 에만 combination parameter IO 추가.
- mapper 에만 i-button 제거시 전송되는 키정의
- i-button 데이타에 대한 pre/postfix와 i-button 제거에 대한 pre/postfix 구분.
- "common" tab 에서 "Inserts OPOS Sentinel" button 선택 후, 취소시 ISO1~3 tab 의 데이타가 모두 삭제되는 문제 수정.
- 개발 일정 문제로 msr에 추가된 기능은 mapper 에만 추가됨.
- tg_lpu237_fw.dll v3.2로 업데이트. 추가된 기능지원.(combination & i-button remove)
- lpu230_update.exe v1.1로 업데이트. 추가된 기능지원.(combination & i-button remove)
- c type 에서 inteface 가 uart 로 설정된 설정파일 로드시, uart로 설정되는 문제 수정.
- 개발 일정 문제로 msr에 추가된 기능은 mapper 에만 추가됨. 다른 component 는 계속 개발되어야 함.

## 2022.08.20 – MSR only install package 처음 제작.( lpu230_msr_only_1_8_64.msi)
- Package 이름은 lpu230_msr_only_x_y_z.msi 로 결정.
- 일반 package1.8.64 에서 i-button 관련 component 제거. MSR 만 있는 lpu237 제품을 위한 것.
- 일반 package1.8.64 의 tg_lpu237_dll.dll v3.0을 NDM 을 사용하지 않는 최종 버전 v1.6으로 교체.
- NCR Device Services API 가 OPOS 의 service object를 통해 tg_lpu237_dll.dll 사용시 문제 회피를 위한 제작.

## 2019.12.10 – mapper 1.44.0.4 를 위한 업데이트(일반 package1.8.64, 최소 package1.44.0)
- lpu230.exe(mapper)는 한 개의 instance 만 허용하도록 수정.( 포스뱅크 요청으로 mapper만 다른 폴더에 인스톨하는 installer package 1.44.0 이 생겨서 두 개의 mapper 가 실행 될 경우, 로그 기록 상에 문제가 생겨서 단일 instance 만 가능 하도록 수정함.
- 마그네틱 카드 읽는 방향을 설정하기 기능 추가. 가능한 방향은 bidirectional, forward, backward 이고, 각 트랙 마다 설정하지 않고, 한 번에 설정하도록 함.
- 설정 파일에 “common” element 에 “direction” attribute 추가하여 마그네틱 카드 읽는 방향을 설정 가능 하도록 함.
- tg_lpu237_fw.dll 파일도 마그네틱 카드 읽는 방향을 설정 기능 지원을 위해 3.0 에서 3.1 로 업데이트.  
- 포스뱅크의 요청으로, 화면 표시 없고, 로그만 만드는 firmware 다운로드 가능한 프로그램 개발 요청으로 “lpu230_update.exe” 프로그램이 제작됨. 버전 1.0.
- firmware 변경 중 실패해서, 복구하는 과정에서 발생하는 문제점 검토 및 수정.( 임시 firmware 정보 파일 삭제 않는 것, rom 파일만 복구 지원하는 것. )

## 2018.8.21 – mapper 1.43.0.4 를 위한 업데이트(package1.8.63)
- 설정 파일을 읽어 들여 장비를 설정하는 기능 추가.
- 현재 장비 설정을 파일로 저장하는 기능 추가.

## 2018.8.7 – mapper 1.42.0.4 를 위한 업데이트(package1.8.62)
- “Apply Now” 버튼 숨김.
- “Inserts Sentinel” 과 “Set pre/postfix type1” 버튼 동작시 pre/postfix 추가가 안되던 코드실수 수정.( 레퍼런스로 받은 파라메터를 메소드를 사용하지 않고 직접 수정해서, 수정되었다는 것을 프로그램이 인지 못해, 변경 사항이 적용되지 못했음. 상수형 레퍼런스로 파라메타를 받도록 수정해서, 아예 메소드를 사용하지 않고 변경 할 경우, 컴파일시 에러 나도록 함.)


## 2018.7.27 – mapper 1.41.0.4 를 위한 업데이트
- “Inserts Sentinel” 버튼 다시 보이게 함.
- “Set pre/postfix type1” 버튼 추가, 기존 iso1,2,3 private pre/postfix를 모두 삭제하고, iso1 private prefix 는 %, iso1 private postfix 는 ?, iso2 private prefix 는 ;, iso2 private postfix 는 ?, iso3 private prefix 는 ;, iso3 private postfix 는 ? 로 세팅함.


## 2018.7.25 – mapper 1.40..0.4 를 위한 업데이트
-  mapper 1.39.0.4 에 추가된 기능 삭제.
- “Inserts Sentinel” 버튼 안보이게 숨김.

## 2018.7.11 – mapper 1.39.0.4 를 위한 업데이트.
- pre.postfix 에 CTRL+ALT+l , CTRL+ALT+f 를 입력 하면, 리더기에 ALT+키패드1, ALT+키패드0 으로 변경되어 저장되고, 리더기에서 읽을 때 도 그 반대로 작동 하도록 수정함.

## 2018.4.26 – installer package version 을 1.8.57 에서 1.8.58 로 업데이트.
- uninstall 시에 registry 에 남는 일부 키와 키값을 자동 삭제 하도록 함. util_set_path.exe 에 
“-rso”, “-rsow”, “-rw” option 기능을 추가(버전이 없었다가 v2.1 이됨)하여, 설정된 path 제거시, regis-try 키와 키값도 제거 하도록 함.
- test_opos_lock.exe 프로그램 실행시, 내부 thread의 과도한 시간 사용으로 인한, CPU 점유률 상승문제 해결을 위해, 내부 thread 에 20msec timeout 시간을 추가함. 이 프로그램은 데모 프로그램으로 기존 서비스나 라이브러리의 변경은 없음.

## 2018.3.19 – mapper 1.38.0.4 를 위한 업데이트.
- 인터페이스 선택하는 부분과 i-button 설정부분 코드 실수 수정.

## 2018.3.6 – mapper 1.37.0.4 를 위한 업데이트.( 실제 필드에 배포되지 않음 )
- Addmit's codestick 전송 형태 지원하기 위한 설정기능 추가.

## 2017.11.18 – The Next Device Manager( NDM ) 지원을 위한 업데이트.
- NDM 프로그램 요소 추가( ng_DevManager.exe v1.5, ng_ManagerCtl.exe v1.2.0.1, ng_DDL_lpu237.dll v1.0, ng_SSS.exe v1.1.0.1 )
- tg_lpu237_ibutton.dll 를 NDM 지원을 위해 3.0 으로 업데이트.
- tg_lpu237_dll.dll 를 NDM 지원을 위해 3.0 으로 업데이트.
- tg_lpu237_fw.dll 를 NDM 지원을 위해 3.0 으로 업데이트. LPU237_fw_rom_get_index() 함수 0만 리턴하는 코드실수 수정.
- Javapos MSR service object v1.11 추가.( JposLpu237MsrSO.jar ), 자바와 tg_lpu237_dll.dll  간 통신을 위한 tg_lpu237_jni.dll v1.0.0.1 추가.
- MSR pre/post(suffix)fix 의 function key 지원을 위해 lpu230 mapper(lpu230.exe) 1.36.0.4 로 업데이트.
- 32비트 OS 를 위한 installer( v1.8.55, lpu230.msi )에서 기존 값을 OPOS & Javapos service object 설치 하도록 변경.
- 64비트 OS 를 위한 installer( v1.8.55, lpu230_x64.msi )에서 OPOS 및 BTC 관련 소프트웨어 전부 삭제.( OPOS 와 BTC 는 64 비트를 지원하지 않음. 64 비트 OS에서 이들을 사용하기 위해서는  32비트 OS 를 위한 installer를 설치하고, WOW64를 이용하여 32비트 응용프로그램을 만들어야함.

## 2017.09.19 – i-button 을 위한 OPOS Keylock Service object 를 버전 2.0 으로 새로 추가.
- 이 Keylock SO 가 기존의 tg_lpu237_ibutton.dll 을 사용 하도록 하기 위해서 tg_lpu237_ibutton.dll 을 버전 2.0 으로 업데이트.
- 향후  MSR SO 와 Keylock SO 을 동시 사용 가능하도록 업데이트 예정.( 프로젝트 진행 중 임시 릴리즈 )

## 2017.03.06 - lpu230 mapper(lpu230.exe) 1.35.0.4 로 업데이트.
- F/W 에서 i-Button 제거시, 선택적으로 “0000000” 을 전송할 수 있는 기능이 추가 되어, 그 기능을 지원하기 위한 변경.

## 2015.05.19 - lpu230 mapper(lpu230.exe) 1.34.0.4 로 업데이트.
- F/W 에서 i-Button 제거시, “0000000000000000” 전송이 선택 사항으로 변경 됨에 따라 그 기능을 지원하기 위한 변경.

## 2015.05.14 – tg_lpu237_dll.dll 1.4 로 업데이트.
- LPU-208D 의 SCR 장비 지원.

## 2015.03.30 – lpu230 service object 1.8.21 로 업데이트.
- CCO 에서 fire 호출 후, 나가기 전에 clearinput 호출 하면, device queue 동기화를 위해 사용한 mutex에서 deadlock 발생 문제 해결.

## 2014.12.8 – lpu230 mapper(lpu230.exe) 1.33.0.4 로 업데이트.
- i-button 제거 시, keyboard interface 일 때, 선택 적으로 F12 만 전송 할 수 있는 기능 추가.

## 2014.11.25 – lpu237에서 USB HID Vendor interface 를 통해, i-button 데이타를 수신 할 수 있는  API 첫 버전 v1.0.0.1 개발.
- 포스뱅크 요청에 의해   USB HID Vendor interface 를 통해, i-button 데이타를 수신 할 수 있는 API 를 개발함. 이 API 는 기존 BTC API 와 동일하게 해 달라고 해서, BTC API 형태에 맞춤.

## 2014.9.18 - lpu230 mapper(lpu230.exe) 1.32.0.4 로 업데이트.
- 포스뱅크(미국 고객) 요청에 의해 Global pre/postfix 변경 기능 추가.

## 2014.04.14 – lpu230 mapper(lpu230.exe) 1.31.0.4 로 업데이트.
- 포스뱅크 요청에 의해 “vender” 오타를 “vendor”로 수정.
- mapper installer 에서 firmware 삭제.

## 2014.01.03 - lpu230 mapper 프로그램(lpu230.exe) 1.26.0.4 로 업데이트.
- 1.24.0.4 에 rom 파일만 lpu237_00006.rom 로 변경. 관리 편의상 버전만 1.26 으로 상승.

## 2013.10.23 - lpu230 mapper 프로그램(lpu230.exe) 1.24.0.4 로 업데이트.
- 포스뱅크 요청으로 관리 목적으로  BTC SO 가 업데이트 되어서 mapper 버전만 변경함.

## 2013.10.23 – BTC SO 2.0.0.10 으로 업데이트.
- Posready7 에서 USB keyboard 문제 해결.

## 2013.10.22 – Installer package 만 변경.
- install 시, mapper 와 OPOS 관련 소프트웨어를 선택적으로 설치 가능하도록 함.

## 2013.10.01 – lpu230 mapper 프로그램(lpu230.exe) 1.23.0.4 로 업데이트.
- 장비 재연결 하면, Shift Alt, Ctl 키 이미지 표시 않되는 문제 해결.

## 2013.09.30 - lpu230 mapper 프로그램(lpu230.exe) 1.22.0.4 로 업데이트.
- 부저 기본 주파수 결정 값을 callisto 는 2500 으로 ganymede 는 1600 을 변경.

## 2013.09.27 – lpu230 mapper 프로그램(lpu230.exe) 1.21.0.4 로 업데이트.
- 부저 기본 주파수 2.5KHz에서 2KHz 로 변경.

## 2013.09.23 – lpu230 mapper 프로그램(lpu230.exe) 1.20.0.4 로 업데이트. 각종 코드 실수 수정.

## 2013.09.03 – lpu230 mapper 프로그램(lpu230.exe) 1.18.04, Service Object 1.8.19(OposLpu230.dll) , ng_DDL_hid.dll 1.3.0.0, tg_lpu237_dll.dll 1.1.0.0 으로 각 업데이트.
- BTC 새로운 MSR 지원.

## 2013.07.24 – lpu230 mapper 프로그램(lpu230.exe) 1.17.04, Service Object 1.8.19(OposLpu230.dll) , ng_DDL_hid.dll 1.3.0.0, tg_lpu237_dll.dll 1.1.0.0 으로 각 업데이트.
- 장비 인식 코드에 code missing 이 있어, 장비 인식 코드를 시용하는 모든 소프트웨어 업데이트.

## 2013.07.17 – lpu230 api version 1.0 추가.
- lpu230  vender-defined HID interface를 지원하기 위한 api version 1.0 추가.( tg_lpu237_dll.dll )

## 2013.06.20 - lpu230 mapper 프로그램(lpu230.exe) 1.16.0.4 로 업데이트.
-  vender-defined HID interface 선택기능 추가.( 즉 callisto version 3.9 지원. )


## 2013.04.25 – lpu230 mapper 프로그램(lpu230.exe) 1.15.0.4 로 업데이트.
- MMD110 magnetic decoder 를 지원하는 ganymede system 지원 기능 추가.
- 기존 firmware 를 bin 파일로 제공하던 것을 rom 파일로 제공.
- 제공되는 lpu237_00001.rom 는 callisto system을 위한 FW v3.8.0.4 와 ganymede system 을 위한 FW v4.2.1.4 를 포함하고 있음.
- 기존 callisto system 은 Magtek DeltaAsic 을 지원하며, 신규 ganymede system 은 MMD1100을 지원함.
- system name 표시 기능 추가.


## 2012.12.21 - lpu230 mapper 프로그램(lpu230.exe) 1.14.1.4 로 업데이트.
- hid boot loader plug in 시간이 오래 걸릴 때 프로그램 재시작하라고 에러 표시함.
- BTC E 모델 구분 못하는 code miss 수정.

## 2012.12.14 – lpu230 mapper 프로그램(lpu230.exe) 1.14.0.4 로 업데이트.
- firmware update 할 때 firmware  선택 dialog box에서 의 기본 폴더가 설치 폴더의 fw 폴더로 자동 설정되는 기능 추가.
- 이 installer 에서 lpu230 폴더 및에 fw 폴더가 자동으로 만들어 지고, 그 곳에 최신 firmware 가 in-stall 되도록 함.
- 이 installer 에서 uninstall short-cut 이 생성되도록 함.

## 2012.11.26 – lpu230 Mapper 프로그램(lpu230.exe)1.13.2.4 로 업데이트.
- 장비 제거시, 장비에 관한 Page 들이 그대로 남아 있는 문제 해결.

## 2012.11.15 – lpu230 Mapper 프로그램(lpu230.exe)1.13.1.4 로 업데이트, Service Object 1.8.18 (OposLpu230.dll) 로 업데이트.
- Hid library 1.2.2.1 로 업데이트.
- Mapper BTC PP152 C/D/E model 지원 기능 추가.( BTCMSRSetter.dll , MSRSetterAPI.dll )

## 2012.10.10 -  Service Object 1.8.27(OposLpu230.dll) 으로 업데이트
- log ini 파일 path 두가지 동시 지원, 표준 lpu230 모델 installer 를 위해 추가됨. POSBANK에는 전달 되지 않음.

## 2012.10.09 – lpu230 config 프로그램(lpu230.exe)1.12.1.4 로 업데이트, Service Object 1.8.26(OposLpu230.dll) 으로 업데이트, ng_DDL_hid.dll 1.2.0.1로 업데이트.
- iButton Reader board 지원 기능 추가.
- MSR 기능 유무 자동 인식 기능 추가.
- B 사 xKBDFltr.sys 와 충돌 문제 회피.( 추가적 검토와 논의 필수 ).
-  lpu230.exe 프로그램 UI 변경.

## 2012.07.26 - Service Object 1.8.14 으로 업테이트.
- OposLpu230.ini 을 추가하여, 카드 읽기 에러 시, event 를 선택적으로 발생 시킬 수 있도록 수정.

## 2012.07.11 - lpu230 config 프로그램(lpu230.exe) 1.10.2.4 로 업데이트.
- 각 트랙 PAGE 에서 업데이트 되지 않는 문제 수정.

## 2012.07.10 - Service Object 1.8.12 으로 업테이트.
- Microsoft Dynamics RMS 에서 동작 불능 문제 해결( OPOS Mode OFF 되는 때를 변경함.)

## 2012.07.10 – lpu230 config 프로그램(lpu230.exe) 1.10.1.4 로 업데이트.
- 구형 펨웨어 지원 기능 추가( 현재 필드에 사용 중인 펨웨어 랑 관계 없음. )

## 2012.04.24 - lpu230 config 프로그램(lpu230.exe) 1.10.0.4 로 업데이트.
-  Common property tab 에서 “Inserts OPOS sentinels” 버튼 위치 변경. “Apply Now” 버튼 추가.

## 2012.04.24 – lpu230 config 프로그램(lpu230.exe) 1.9.0.4 로 업데이트.
- Common property tab 에서 “Insert sentinels” 을 “Inserts OPOS sentinels” 로 변경함.

## 2012.04.23 – lpu230 config 프로그램(lpu230.exe) 1.8.0.4 로 업데이트.
- 펨웨어 업데이트 후, 자동으로 설정값 재설정. “Apply” 버튼 누르면 처리 결과 메시지 박스로 표시함.

## 2012.04.04 – lpu230 config 프로그램(lpu230.exe) 1.7.0.4 로 업데이트.
- PS2 mode 가 standalone 과 Bypass 두가지 있어으나, 펨웨어 3.6.0.4 에서 자동 감지 기능 추가로 한 가지로 변경됨.( 그냥 PS2 mode 임 )  

## 2012.04.04 – Service Object 1.8.10 으로 업테이트.
- OPOS mode 에서 제품 USB 포트에서 제거시, 반환 되는 오류값이 잘못되어 수정함.

## 2012.02.29 – Service Object 1.8.8 로 업데이트.
- OPOS mode 에서  PC 가 Sleep, Hibernation 에 진입 후, resume 할 때, 자동으로  OPOS mode 로 재진입하는 기능 오류 수정.

## 2012.02.27 - Service Object 1.8.6 으로 업데이트.
- AP 에서 close 호출 없이 종료 할 때, 자동으로 close 호출 하여, lpu237 를 OPOS mode 에서 해제.
- SO 의 버전이 1.9.0 이상 이면 CCO는 에러 반환함.

## 2012.02.27 - lpu230 config 프로그램( lpu230.exe ) 1.6.0.2 로 업데이트.
- 실행 할때 lpu237 이 없고, 타사 장비가 연결되어 있으면, 행동 요령을 알려 줌.

## 2012.02.10 - lpu230 config 프로그램( lpu230.exe ) 1.5.0.2 로 업데이트.
- 언어별 키사상표 전송 기능 추가. 처음 펨웨어 업데이트 시 발생하는 에러 수정.

## 2012.01.18 – Service Object 1.8.2 및 lpu230 config 프로그램( lpu230.exe ) 1.4.0.2 업데이트
- SO 에 RS232 interface 기능 추가.
-  lpu230 config 프로그램에 lpu237-c002 지원 기능 추가.


## 2011.12.23 -  lpu230 config 프로그램( lpu230.exe ) version 1.3.1.4
- HID bootloader 를 이용한 펨웨어 업데이트 기능 추가.

## 2011.11.9 -  LPU230 용, OPOS Service Object version 1.8.1.1
- Claim 부분 code missing 수정, 로그 출력 기능 추가.

## 2011.11.2 -  lpu230 config 프로그램( lpu230.exe ) version 1.2.0.0
- bootloader 실행시간 점검방법 변경.

## 2011.10.28 – lpu230 config 프로그램( lpu230.exe ) version 1.1.0.0
- private pre/postfix 에 Start sentinel text(STX) 와 end sentinel text(ETX) 삽입 기능 추가.

## 2011.10.28 -  LPU230 용, OPOS Service Object version 1.7.0.1
- TransmitSentinels, TrackToRead property 구현.

## 2011.9.9 - LPU230 용, OPOS Service Object version 1.6.0.1
- event Queuing 변경.( OposLpu230.dll)

## 2011.9.2 – LPU230 용, OPOS Service Object version 1.0.0.1

## 2011.7.5 – version 1.0.0.0 : 첫 배포 버전. lpu230 config 프로그램. ( lpu230.exe )