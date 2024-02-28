FROM openjdk:17
WORKDIR /app

ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} app/app.jar

EXPOSE 8181

CMD ["java", "-jar", "app/app.jar"]