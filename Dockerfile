FROM maven:3.8.7-eclipse-temurin-8-alpine
RUN mkdir build
ADD . /build
WORKDIR /build
RUN mvn package
RUN cp target/todorest-0.0.1-SNAPSHOT.jar todorest.jar 
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "todorest.jar"]
