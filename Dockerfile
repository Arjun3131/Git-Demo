FROM tomcat:latest
MAINTAINER arjun
RUN apt-get update
RUN cp /var/lib/jenkins/workspace/TestPipe/target/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
