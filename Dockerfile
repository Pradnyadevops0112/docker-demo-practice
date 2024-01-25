# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-slim

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/docker-hello-world-1.0-SNAPSHOT.jar /app/docker-hello-world.jar

# Run the application when the container launches
CMD ["java", "-jar", "docker-hello-world.jar"]
