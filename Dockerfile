# Use a lightweight JDK 17 base image
FROM eclipse-temurin:17-jre-alpine

# Set the working directory
WORKDIR /app

# Copy the JAR file built by Maven into the container
# Note: Match the version in your pom.xml (e.g., 3.0.0-SNAPSHOT)
COPY target/spring-petclinic-*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
