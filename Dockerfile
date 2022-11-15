FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

WORKDIR /work/
COPY target/my-app-1.0-SNAPSHOT.jar /work/app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
