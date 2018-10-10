FROM openjdk:10-jre-slim
COPY ./target/SpringbootWithJUnit-0.0.1-SNAPSHOT.jar /usr/src/springfiles/
WORKDIR /usr/src/springfiles/
EXPOSE 8080
CMD ["java", "-jar", "SpringbootWithJUnit-0.0.1-SNAPSHOT.jar"]