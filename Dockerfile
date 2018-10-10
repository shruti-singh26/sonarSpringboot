FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/SpringbootWithJUnit-0.0.1-SNAPSHOT.jar /usr/src/springfiles
RUN cp -r /usr/src/springfiles/* / && rm -r /usr/src/springfiles
WORKDIR /usr/src/springfiles
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/SpringbootWithJUnit-0.0.1-SNAPSHOT.jar"]