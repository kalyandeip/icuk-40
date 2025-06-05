# Use a lightweight OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the target directory
COPY target/sonarscanner-maven-basic-1.0-SNAPSHOT.jar app.jar

# Run the JAR when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
