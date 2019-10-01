FROM openjdk:8

## mvn clean install 

ADD target/k8s.jar /opt/app.jar  # we need build jar and pass that inside container

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]
