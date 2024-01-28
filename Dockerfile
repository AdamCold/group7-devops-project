# Use the latest OpenJDK base image
FROM openjdk:latest

# Copy the executable JAR file from the local build context to /tmp in the image
COPY "./target/group7-devops-project-0.1.0.2(0.1-alpha-2)-jar-with-dependencies.jar" /tmp

# Set the working directory to /tmp
WORKDIR /tmp

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "group7-devops-project-0.1.0.2(0.1-alpha-2)-jar-with-dependencies.jar"]
