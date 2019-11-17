From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yogesh.bagul26@gmail.com" 
RUN mkdir -p /usr/local/tomcat/webapps
ENV PROJECT_HOME /usr/local/tomcat/webapps
COPY target/webapp.war $PROJECT_HOME/webapp.war
WORKDIR $PROJECT_HOME
