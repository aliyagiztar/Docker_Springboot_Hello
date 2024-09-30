📦 Microservice Docker Hello

This project demonstrates a simple microservice implemented using Spring Boot, running inside a Docker container. The service exposes multiple REST API endpoints to return greetings and system information.

Project Structure

The application is built with the following core components:

	•	Spring Boot REST Controller: Handles HTTP requests for greeting messages and system info.
	•	Docker: Dockerizes the Spring Boot microservice for ease of deployment.
	•	Nginx, PostgreSQL, MySQL: Various Docker containers are used to demonstrate container orchestration.

Docker Commands

Below are the essential Docker commands used to run and manage containers for this project:

Nginx Setup
docker run -it -d --name my-nginx -p 8080:80 nginx
docker run -t -d --name my-nginx -p 9999:80 nginx

PostgreSQL Setup
docker pull postgres:latest
docker run --name my-postgres -p 9999:5432 -e POSTGRES_PASSWORD=1234567890 -d postgres

MySQL Setup
docker run --name my-mysql -p 9990:3306 -e MYSQL_ROOT_PASSWORD=1234567890 -d mysql

Building the Docker Image
To build the Docker image for the Spring Boot microservice, use the following command:
docker build --build-arg JAR_FILE=build/libs/Java_Docker_Hello-1.0.0.jar --tag aliyagiztar/devops001-hello:v001 .

Run the microservice with:
docker run --name microservis-docker-hello -p 8081:8081 aliyagiztar/devops001-hello:v001

Spring Boot Endpoints

HTTP Method     Endpoint        Description
GET             /api/v1/hello   Returns: “Selamlar ben Ali Yağız Tar”
GET             /api/v2/hello   Returns: “Selamlar ben Ali Yağız Tar”
GET             /api/v1/info    Returns: Info with current date and time
GET             /api/v2/info    Returns: Info with current date and time

Images and Containers
Images and containers related to this project:

	•	MySQL: Local instance and Docker-based instances.
	•	PostgreSQL: Latest PostgreSQL instance running in Docker.
	•	Nginx: Used as a simple web server within Docker.

Docker Hub
The Docker images for this project can be found on Docker Hub:
•	Repository: aliyagiztar/microservis-docker-hello

Additional Notes
•	Interactive Mode (-it): Allows interaction with the running container.	•	Detached Mode (-d): Runs the container in the background.
•	Detached Mode (-d): Runs the container in the background.
•	Exposed Ports: Ports 8080, 9999, 5432, and 3306 are used for Nginx, PostgreSQL, and MySQL services.

Feel free to explore the images and try running the microservice locally using Docker commands.

You can replace image links with correct paths based on your setup. Let me know if you need any more tweaks or additional sections for your README!

📧 Contact & Support

For any questions or issues regarding this project, feel free to reach out via aliyagiz.tar@gmail.com or visit our GitHub Repository.