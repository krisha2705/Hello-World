# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yogesh.bagul26@gmail.com" 
RUN mkdir -p /usr/local/tomcat/webapps
ENV PROJECT_HOME /usr/local/tomcat/webapps
COPY target/webapps.war $PROJECT_HOME/webapps.war
WORKDIR $PROJECT_HOME
