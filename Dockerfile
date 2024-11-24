# Use the official OpenJDK image from Docker Hub
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/helloworld-app.jar app.jar

# Expose port 8080 for Spring Boot app
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

