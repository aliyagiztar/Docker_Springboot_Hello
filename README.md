📦 Java Docker Hello Project

Welcome to the Java Docker Hello project! This guide will walk you through building and running the Java application using Docker. Below are the steps to help you create a Docker image, understand key commands, and ensure best practices like using lowercase repository names and placing the Dockerfile in the correct directory.

🛠️ Prerequisites

Before you get started, ensure you have the following installed on your machine:

	•	Docker installed
	•	Basic knowledge of Java and Docker
	•	Access to the project files (including the JAR file and Dockerfile)

📂 Project Structure

Your project directory should follow this structure for the Docker build to succeed:
Java_Docker_Hello/
│
├── build/
│   └── libs/
│       └── Java_Docker_Hello-1.0.0.jar
├── Dockerfile
└── README.md
Dockerfile: Ensure that your Dockerfile is located at the root of the project directory (top-level).
•	JAR File: The compiled JAR file should be located under the build/libs/ directory.

🖼️ Images

<img width="1211" alt="1" src="https://github.com/user-attachments/assets/e3f681a4-c6f6-4577-8b4d-e29e69caa208">
<img width="467" alt="2" src="https://github.com/user-attachments/assets/0549f355-0f6b-4e03-9a7a-0fc06f94cd37">
<img width="467" alt="3" src="https://github.com/user-attachments/assets/b244f0cd-077a-4349-9603-f4d8c82f7f4c">
<img width="1555" alt="4" src="https://github.com/user-attachments/assets/a76c8cca-d5ff-4124-901c-7efa31208a0f">




Below are some example images related to the project:

	•	
🚀 Building the Docker Image

To build the Docker image, execute the following command in your terminal:
docker build --build-arg JAR_FILE=build/libs/Java_Docker_Hello-1.0.0.jar -t aliyagiztar/java_docker_hello:v001 .
🔍 Explanation:

	•	--build-arg JAR_FILE=build/libs/Java_Docker_Hello-1.0.0.jar: This argument specifies the path to your JAR file within the project directory.
	•	-t aliyagiztar/java_docker_hello:v001: The -t flag assigns a name and tag to your Docker image. Note: The repository name must be in lowercase.
	•	. (dot): Specifies that the Dockerfile is in the current directory.
⚠️ Important:

Make sure that the repository name (aliyagiztar/java_docker_hello) is all lowercase to avoid build errors.
📍 Verifying Your Current Directory

Before building, you may want to confirm that you are in the correct directory. Run the following command to check your current path:
pwd
Note: You should be in the root directory of your project where the Dockerfile is located.

📝 Dockerfile Best Practices

Here are some best practices to ensure your Dockerfile is correctly set up:

	•	Location: Place the Dockerfile at the root level of the project directory.
	•	Repository Name: Always use lowercase letters for the repository name to comply with Docker’s naming conventions.
	•	Image Tagging: Use meaningful tags like v001, latest, etc., to version your Docker images effectively.

📄 Example Dockerfile
# Use Amazon Corretto JDK 17
FROM amazoncorretto:17

# Set working directory
WORKDIR /app

# Define build argument for the JAR file
ARG JAR_FILE=build/libs/*.jar

# Copy the JAR file into the container
COPY ${JAR_FILE} application.jar

# Expose the port that the app will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-Xmx2048M", "-jar", "application.jar"]
Dockerfile Key Points:

	•	FROM amazoncorretto:17: Specifies the base image with JDK 17.
	•	WORKDIR /app: Sets the working directory inside the container.
	•	COPY ${JAR_FILE} application.jar: Copies the JAR file into the container.
	•	EXPOSE 8080: Exposes port 8080 to allow communication with the container.
	•	ENTRYPOINT: Specifies how to run the application inside the container.

✅ Next Steps

After building the Docker image, you can run the container using the following command:
docker run --name my-java-app -p 8081:8081 aliyagiztar/java_docker_hello:v001
🎯 Explanation:

	•	--name my-java-app: Names the running container.
	•	-p 8080:8080: Maps port 8080 on your local machine to port 8080 inside the container.
	•	aliyagiztar/java_docker_hello:v001: Specifies the Docker image to run.

Once the container is running, you can access your application at http://localhost:8081.

📧 Contact & Support

For any questions or issues regarding this project, feel free to reach out via aliyagiz.tar@gmail.com or visit our GitHub Repository.
