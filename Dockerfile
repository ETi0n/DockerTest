# FROM : Base Container image로 Java 17버전이 포함된 Docker 이미지 사용
FROM bellsoft/liberica-openjdk-alpine:17
# or
# FROM openjdk:8-jdk-alpine
# FROM openjdk:11-jdk-alpine

CMD ["./gradlew", "clean", "build"]
# or Maven
# CMD ["./mvnw", "clean", "package"]

# 컨테이너 내에 /tmp 디렉터리를 볼륨으로 설정
VOLUME /tmp

# Gradle로 빌드한 jar 파일의 위치를 변수로 설정
ARG JAR_FILE=build/libs/*.jar
# or Maven
# ARG JAR_FILE_PATH=target/*.jar

# COPY : '복사할 파일 경로'와 '이미지에서 파일이 위치할 경로'로 컨테이너에에서 이미지에 파일 추가
COPY ${JAR_FILE} app.jar

# EXPOSE : 컨테이너가 사용할 포트를 설정
EXPOSE 8080

# ENTRYPOINT : 컨테이너를 시작할 때 실행할 명령어
ENTRYPOINT ["java","-jar","/app.jar"]
