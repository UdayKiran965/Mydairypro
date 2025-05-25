# Use an official OpenJDK 17 image as the base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/MyDairyProject-0.0.1-SNAPSHOT.jar mydiarypro.jar

# Expose port 8080 (used by Spring Boot)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "mydiarypro.jar"]
