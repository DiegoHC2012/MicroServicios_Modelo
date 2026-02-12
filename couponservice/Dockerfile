# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:21-jre-alpine

# Copy the JAR file to the container
COPY target/couponservice-0.0.1-SNAPSHOT.jar couponservice-0.0.1-SNAPSHOT.jar

# Run the application
ENTRYPOINT [ "java","-jar","couponservice-0.0.1-SNAPSHOT.jar" ]