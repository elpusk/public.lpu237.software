# tg_lpu237_fw.dll test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* [x] tg_lpu237_fw.dll version - 4.0.0.0, 32 bits
* [ ] tg_lpu237_fw.dll version - 4.0.0.0, 64 bits
* [x] NDM mode.
* [ ] Direct mode.

* the tested device
  * [ ] lpu237-C type callisto
  * [ ] lpu237-D type ganymede
  * [x] lpu238-D type europa(lpu237-D 와 H/W 동일)

* the tested Firmware version.
  * [ ] lpu237_00026.rom = v3.22(callisto) +  v5.21(ganymede).
  * [x] lpu238_00001.rom = v1.0(europa).

## test case
1. <u>function</u>
  * [x] LPU237_fw_on() 함수 정상 실행.
  * [x] LPU237_fw_get_list() 함수 정상 실행.
  * [x] LPU237_fw_open() 함수 정상 실행.
  * [x] LPU237_fw_msr_get_name() 함수 정상 실행.
  * [x] LPU237_fw_msr_get_version() 함수 정상 실행.
  * [x] LPU237_fw_msr_get_id() 함수 정상 실행.
  * [x] LPU237_fw_msr_save_setting() 함수 정상 실행.
  * [x] LPU237_fw_rom_load() 함수 정상 실행.
  * [x] LPU237_fw_rom_get_index() 함수 정상 실행.
  * [x] LPU237_fw_msr_update() 함수 정상 실행.
  * [x] LPU237_fw_msr_update_callback() 함수 정상 실행.
  * [x] LPU237_fw_msr_update_wnd() 함수 정상 실행.
  * [x] LPU237_fw_msr_recover_setting() 함수 정상 실행.
  * [x] LPU237_fw_close() 함수 정상 실행.
  * [x] LPU237_fw_off() 함수 정상 실행.
  * [ ] LPU237_fw_msr_cancel_update() 함수 정상 실행.

2. <u>설정 파일</u>
  * [ ] tg_lpu237_fw.dll 과 같은 폴더에 있는 tg_lpu237_fw.ini 의 설정에 따라 동작.-A
  * [ ] %ProgramData%\Elpusk\00000006\tg_lpu237_fw\tg_lpu237_fw.ini 의 설정이 동작하는지-B
  * [ ] %ProgramData%\Easyset\00000000\tg_lpu237_fw\tg_lpu237_fw.ini 의 설정이 동작하는지-C
  * [ ] installer 에 의해 설치되는 lpu230_fw.ini 의 설정에 따라 동작.-D
  * [ ] A, B, C, D 모두 해당 설정파일이 있으면, A,B,C,D 순서로 우선 순위를 갖는지 여부.

3. <u>호환성</u>
  * [x] LPU237_fw_msr_save_setting() , LPU237_fw_msr_recover_setting() 호출 여부와 상관없이, device의 update 전, parameter가 자동 복원.
  * [ ] Direct mode 에서 v1.2 과 동작이 동일.( v1.2 는 버그와 일부 지원 기능이 없어 parameter 복구에 문제 있음.)
  * [ ] NDM mode 에서 v3.2 과 동작이 동일.
  * [ ] auto mode 에서 NDM 이 실행이면, NDM mode, 비실행이면 Direct mode 자동 전환.

