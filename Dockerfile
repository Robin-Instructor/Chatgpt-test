# Use a base image with a Java runtime environment
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY HelloChatGPT.class /app/HelloChatGPT.class

# Set the default command to run your Java application
CMD ["java", "HelloChatGPT"]

# Expose port 80
EXPOSE 80 
