FROM openjdk:11
VOLUME /tmp
COPY target/*.war api-gateway.war
EXPOSE 8765
CMD ["java", "-jar", "/api-gateway.war"]