FROM tomcat:latest
MAINTAINER arjun
RUN apt-get update
COPY ./*.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
