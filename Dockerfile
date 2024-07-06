FROM adoptopenjdk/openjdk11:latest
EXPOSE 8080
ADD target\spring-boot-cicd.jar spring-boot-cicd.jar
ENTRYPOINT [ "java","-jar","/spring-boot-cicd.jar" ]