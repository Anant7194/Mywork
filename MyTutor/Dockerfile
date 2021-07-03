FROM openjdk:11
ADD target/final.war final.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","final.war"]