# image for spring boot application using openjdk 17 
# jar file name is contactsrestapi-1.0.0.jar in target folder
# docker build -t spring-boot-docker .

FROM openjdk:17
ADD target/contactsrestapi-1.0.0.jar contactsrestapi-1.0.0.jar
EXPOSE 9000
ENTRYPOINT ["java", "-jar", "contactsrestapi-1.0.0.jar"]