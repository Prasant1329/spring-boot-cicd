FROM adoptopenjdk/openjdk11:latest
EXPOSE 8080
ARG JAR_FILE=target/spring-boot-cicd.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-boot-cicd.jar
ENTRYPOINT [ "java","-jar","/spring-boot-cicd.jar" ]