# Use a lightweight OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy your JAR file into the container
COPY sonarscanner-maven-basic-1.0-SNAPSHOT.jar app.jar

# Run the JAR file when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
