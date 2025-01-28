# Use an official OpenJDK image as the base image
FROM eclipse-temurin:17-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
# (Assume the JAR file is built and available in the same directory as the Dockerfile)
COPY target/spring-petclinic-*.jar /app/spring-petclinic.jar

# Expose the port the application runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app/spring-petclinic.jar"]
