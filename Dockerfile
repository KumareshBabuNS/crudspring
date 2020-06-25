FROM java:8
FROM maven:alpine
WORKDIR /app
COPY . /app
RUN mvn -v
RUN mvn clean install -DskipTests
RUN ls target/
EXPOSE 8080
ENTRYPOINT ["java","-jar","./target/demo-0.0.1-SNAPSHOT.jar"]