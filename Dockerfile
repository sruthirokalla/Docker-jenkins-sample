#FROM ubuntu:latest
#LABEL authors="sruth"
#
#ADD
#ENTRYPOINT ["top", "-b"]

FROM ubuntu:latest

LABEL authors="sruth"

# Install Java (OpenJDK 21, since you mentioned JDK 21)
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk && \
    apt-get clean


# Create app directory
WORKDIR /app

# Copy the built JAR from Maven project
ADD target/docker-jenkins-sample.jar /app/docker-jenkins-sample.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "docker-jenkins-sample.jar"]
