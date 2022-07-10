usage
==========

	make sw_emu  #for SW emulation
	make hw_emu  #for HW emulation
	make hw  #for HW synthesis & test

Details
=========

미리 정해둔 테스트 케이스가 급하게 이루어지는 추가 실험, 코드 변경에도 망가지지 않고, 동작 체크 및 성능 재현이 가능하도록 하는 것을 목표로 함

```Task```는 HLS kernel 구동을 위한 드라이버. 커널에서 사용할 배열, OpenCL 버퍼의 생성 및 관리, 커널을 수행하기 위한 정보(커널인자) 준비, 커널 입력값 준비 및 출력 기대값 계산, 커널 수행 결과와의 오차 계산 방법을 명세함.

```Case```는 실질적인 테스트 대상. Makefile 등을 통해 kernel HW 사양을 명세, *TestBench.cpp 코드에서 테스트하고자 하는 환경을 구축함. TestBench는 Task 드라이버를 통해 원하는 SW 정보(레이어 정보 등)를 전달하고 커널을 구동함.

Task 추가 방법
=========
* HLS Kernel 별로 하나 씩 작성하는 것이 원칙?
1. ```./Tasks``` 디렉토리에 추가할 task에 대한 header(```[taskname].h```, source(```[taskname].cpp```) 코드파일 하나씩 생성 (or 기존 것을 복사)
2. ```./TestEnvironment.h```의 ```TargetTask``` Interface를 상속하도록, 새로운 task 클래스 작성
3. ```[taskname].cpp```에서 원하는 커널에 대한 task 구현
	* 레이어 파라미터 관련: *Info 구조체는 testcase와의 SW 인터페이스(특히 ```setLayerParamAndBufSize``` 함수에서 사용), *_PARAM 구조체는 HLS kernel에 직접 전달할 정보 역할
	* runTask 함수는 주로 복사해서 사용 가능하나, kernel 객체 명 수정 필요할 것
	* 기본적으로 ```reorderInput```, ```reorderOutput``` 함수는 호출되는 것을 가정함(```TestEnvironment.cpp```).
4. 새로운 HLS kernel을 추가한 경우,
	1. ```./TestEnvironment.h``` 코드에 (1) ocl_data_ 클래스에 해당 kernel 객체, (2) 커널 번호(```KNL_NUM_... 변수```), (3) 커널명(```knl_name_... 변수```) 추가
	2. ```./TestEnvironment.cpp``` 코드의 initializeOclEnv 함수에, 기존 코드 참고하여 cl::Kernel 객체 생성 코드 추가(참고: compiled_kernel_list & [해당 커널 번호] > 0이면, TestEnvironmnet에서 해당 커널 사용이 요구된 것임)

Case 추가 방법
=========
* 한번 작성되어 검증된 testcase는 효율적 유지보수 위해 최대한 수정하지 않는 것이 원칙?
1. 추가하고자 하는 test case 이름으로 기존 test case 폴더를 복사
2. 복사한 폴더의 ```Makefile``` 수정
	* Build HLS Kernel: 필요한 task에서 사용할 kernel object(.xo)를 빌드하도록 수정, 이를 accelerator.xclbin에서 링크
	* Build TestBench - Specific: 필요한 task의 object(.o)를 빌드하도록 수정, 이를 testbench 실행파일에서 링크
3. 복사한 폴더의 ```TestBench.cpp``` 파일 수정
	* ```*TestBench.cpp``` 이름 규칙은 없으나, ```Makefile```에서 수정 필요
	* 원하는 테스트 입력을 Task 드라이버를 통해 구동하도록 작성
	* TestEnvironment 초기화 단계의 ```initializeOclEnv``` 함수 호출 시, 필요한 HLS kernel 번호를 or operator 사용해 추가(```TetEnvironmnet.cpp```의 TestEnv namespace 참고)
	* 예시 testcase의 testbench 참고. 작성에 엄격한 규칙은 없을 예정
4. ```[Project Root]/src/tb의 Makefile``` 수정
	* 현재, /src/tb의 ```Makefile```에 명시한 test case만 테스트하도록 작성되어 있음
