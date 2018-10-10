FROM openjdk:8-jdk-alpine
WORKDIR /var/lib/jenkins/workspace/SonarPipeline/target/
COPY SpringbootWithJUnit-0.0.1-SNAPSHOT.jar /usr/src/springfiles
WORKDIR /usr/src/springfiles
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/SpringbootWithJUnit-0.0.1-SNAPSHOT.jar"]