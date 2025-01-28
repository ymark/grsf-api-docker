FROM tomcat:9.0.74-jdk17

WORKDIR /usr/local/tomcat

COPY grsf-api.war webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]
