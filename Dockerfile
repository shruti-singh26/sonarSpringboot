FROM openjdk:8-jdk-alpine
COPY target/*.jar /usr/src/springfiles/
WORKDIR /usr/src/springfiles/
EXPOSE 8080
RUN sh -c 'touch /usr/src/springfiles/SpringbootWithJUnit.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/usr/src/springfiles/SpringbootWithJUnit.jar"]