FROM openjdk:8-jdk-alpine
COPY /var/lib/jenkins/workspace/SonarPipeline/target/SpringbootWithJUnit.jar /usr/src/springfiles
WORKDIR /usr/src/springfiles
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/SpringbootWithJUnit.jar"]