# Uygulama için JDK
# openjdk:17
FROM amazoncorretto:17

# Projede Docker içinde olan JAR dosyası konumu
ARG JAR_FILE=build/libs/*.jar

# JAR dosyasını /app/application.jar olarak kopyala - Docker içerisine gelen isim
COPY ${JAR_FILE} Application.jar

# Linux Update
CMD apt-get update-y

# Uygulamanın çalışmasını sağlar
ENTRYPOINT ["java","-jar","Application.jar"]

# Uygulamanın dinleyeceği portu belirt
EXPOSE 8081

# docker build --build-arg JAR_FILE=build/libs/Java_Docker_Hello-1.0.0.jar --tag aliyagiztar/devops001-hello:v001 .
# docker run --name microservis-docker-hello -p 8081:8081 aliyagiztar/devops001-hello:v001
# docker container rename my-app3 my-app4