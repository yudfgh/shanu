# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the Java source code to the container
COPY HelloWorldApp.java .

# Compile the Java source code
RUN javac HelloWorldApp.java

# Command to run the compiled Java program
CMD ["java", "HelloWorldApp"]
