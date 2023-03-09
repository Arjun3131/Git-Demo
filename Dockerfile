FROM tomcat:latest
MAINTAINER arjun
RUN apt-get update
COPY /var/lib/jenkins/workspace/TestPipe/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
