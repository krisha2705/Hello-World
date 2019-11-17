# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yogesh.bagul26@gmail.com" 
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY /var/lib/jenkins/workspace/NewProjectHW/webapp/target/webapp.war $PROJECT_HOME/webapp.war
WORKDIR $PROJECT_HOME
