FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ADD target/SpringbootWithJUnit-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/SpringbootWithJUnit-0.0.1-SNAPSHOT.jar"]