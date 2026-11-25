# lpu23x software package 배포

- 이 문서의 작업을 하기 위해서는 [소스](https://github.com/elpusk/toy) 에 관한 access 권한이 있어야 함.
- [이 repo](https://github.com/elpusk/public.lpu237.software) 는 [소스](https://github.com/elpusk/toy) 에서 만든 soft 를 배포하는데만 사용

## 배포 작업 순서

1. [소스](https://github.com/elpusk/toy) 를 변경해서 새로운 버전을 dll, exe 생성 및 test
2. 테스트 한 test case 를 이 repo 의 [test_result](https://github.com/elpusk/public.lpu237.software/tree/main/test_result) 에 추가
3. 변경된 dll, exe 에 code sign 추가
4. 변경된 dll, exe 를 위해 [소스](https://github.com/elpusk/toy) installer project 수정 및 test

  - full x86 installer project : [소스](https://github.com/elpusk/toy) 의 lpu230_wix project
  - full x64 installer project : [소스](https://github.com/elpusk/toy) 의 lpu230_x64_wix project
  - msr only x86 installer project : [소스](https://github.com/elpusk/toy) 의 lpu230_msr_only_wix project
  - mapper only x86 installer project : [소스](https://github.com/elpusk/toy) 의 lpu230_mapper_only_wix project
  - mapper only x64 installer project : [소스](https://github.com/elpusk/toy) 의 lpu230_mapper_only_x64_wix project

5. 수정된 installer 는 test 후, code sign 추가
6. 각 installer 의 SBOM 생성
7. 생성된 installer 수동 삭제를 위한 [소스](https://github.com/elpusk/toy) lpu230_wix project 의 del_lpu230v3.bat 파일 수정
8. 소스에서 수정된 installer, SBOM 과 del_lpu230v3.bat 를 이 repo 에 적용
9. 이 repo 의 [readme.md](../README.md) 업데이트
10. 이 repo 의 [변경 사항 문서](./history_lpu23x.md) 업데이트
11. 변경된 del_lpu230v3.bat 를 이 repo 의 [wiki](https://github.com/elpusk/public.lpu237.software/wiki/remver%E2%80%9032bit%E2%80%90installer) 에 적용 
12. 변경된 이 repo 를 remote 에 push 해서 배포
