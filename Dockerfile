FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 1111
ARG JAR_FILE=target/com.doj.discovery-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} discovery.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/discovery.jar"]
