# tg_lpu237_dll.dll test case.
* [x] PASS
* [ ] FAIL

## sample conditions
* [x] tg_lpu237_dll.dll version - 4.0.0.0, 32 bits
* [ ] tg_lpu237_dll.dll version - 4.0.0.0, 64 bits
* [ ] NDM mode.
* [x] Direct mode.

* the tested device
  * [ ] lpu237-C type callisto
  * [x] lpu237-D type ganymede
  * [ ] lpu238-D type europa(lpu237-D 와 H/W 동일)

* the tested Firmware version.
  * [ ] v3.22(callisto).
  * [x] v5.21(ganymede).
  * [ ] v1.0(europa).

## test case
1. <u>function</u>
	* [x] LPU237_get_list 함수 정상 실행.
	* [x] LPU237_open 함수 정상 실행.
	* [x] LPU237_close 함수 정상 실행.
	* [x] LPU237_enable 함수 정상 실행.
	* [x] LPU237_disable 함수 정상 실행.
	* [x] LPU237_enter_opos 함수 정상 실행.
	* [x] LPU237_leave_opos 함수 정상 실행.
	* [x] LPU237_cancel_wait_swipe 함수 정상 실행.
	* [x] LPU237_wait_swipe_with_waits 함수 정상 실행.
	* [x] LPU237_wait_swipe_with_callback 함수 정상 실행.
	* [x] LPU237_wait_swipe_with_message 함수 정상 실행.
	* [X] LPU237_get_data 함수 정상 실행.
	* [x] LPU237_dll_on 함수 정상 실행.
	* [x] LPU237_dll_off 함수 정상 실행.
	* [x] LPU237_get_id 함수 정상 실행.


2. <u>설정 파일</u>
  * [ ] tg_lpu237_dll.dll 과 같은 폴더에 있는 tg_lpu237_dll.ini 의 설정에 따라 동작.-A
  * [ ] %ProgramData%\Elpusk\00000006\tg_lpu237_dll\tg_lpu237_dll.ini 의 설정이 동작하는지-B
  * [ ] %ProgramData%\Easyset\00000000\tg_lpu237_dll\tg_lpu237_dll.ini 의 설정이 동작하는지-C
  * [ ] installer 에 의해 설치되는 lpu230_api.ini 의 설정에 따라 동작.-D
  * [ ] A, B, C, D 모두 해당 설정파일이 있으면, A,B,C,D 순서로 우선 순위를 갖는지 여부.

3. <u>호환성</u>
  * [x] Direct mode 에서 v1.7 과 동작이 동일.
  * [ ] NDM mode 에서 v3.0 과 동작이 동일.
  * [ ] auto mode 에서 NDM 이 실행이면, NDM mode, 비실행이면 Direct mode 자동 전환.
