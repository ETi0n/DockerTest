## docker 실행 연습 순서
사전 준비 : 도커 설치

1. spring boot 개발

   - DockerController 파일 참조


2. jar 파일 생성

   - `./gradlew clean build`를 통해서 빌드


3. dockerfile 생성

   - 프로젝트 최상단에 생성
   - Dockerfile 파일 참조


4. docker image 생성
    
    - `dockeer build -t 이미지이름 도커파일위치`를 통해서 토커이미지 생성
    - 예시) `docker build -t dockertestimg .`
    - `docker images`를 통해 도커이미지 생성 확인


5. docker container 실행

   - `docker run -d --name 컨테이너이름 -p 8080:8080 실행이미지이름`를 통해서 컨테이너 생성 및 실행
   - 예시) `docker run -d dockertest -p 8080:8080 dockertestimg`
   - -p 8080:8080 명령어가 없다면 호스트 기기 내의 8080번 포트일 뿐이기 때문에 실제로 연결X, 조건을 달아서 컨테이너의 8080포트와 연결 필요


6. Docker Desktop에서 생성된 컨테이너 상태 확인


7. API 호출로 동작 확인해보고 컨테이너 올리고 내리며 확인 끝
