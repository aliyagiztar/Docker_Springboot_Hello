# Uygulama için JDK
FROM amazoncorretto:17

# Projede Docker içinde olan JAR dosyası konumu
ARG JAR_FILE=target/*.jar

# JAR dosyasını /app/application.jar olarak kopyala
COPY ${JAR_FILE} application.jar

# Linux Update
CMD apt-get update-y

# Uygulamanın çalışmasını sağlar
ENTRYPOINT ["java","-jar","/application.jar"]

# Uygulamanın dinleyeceği portu belirt
EXPOSE 8081