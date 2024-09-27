# Uygulama için JDK
FROM amazoncorretto:17

# Çalışma dizinini ayarla
WORKDIR /app

# Projede Docker içinde olan JAR dosyası konumu
ARG JAR_FILE=target/*.jar

# JAR dosyasını /app/application.jar olarak kopyala
COPY ${JAR_FILE} application.jar

# Linux Update
CMD apt-get -update-y

# Uygulamanın çalışmasını sağlar
ENTRYPOINT ["java","-jar","/app/application.jar"]

# Uygulamanın dinleyeceği portu belirt
EXPOSE 8081