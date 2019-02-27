#!/bin/groovy
pipeline{
agent any
	stages {
	
	   stage('SCM Checkout'){
	       steps {
	   git branch: 'master', credentialsId: '64c944c0-c872-476c-a81a-37178b9c8487', url: 'https://github.com/krisha2705/Hello-World/'
	}
      }
	stage('Build Package'){
	     steps {
	     withMaven(maven : 'apache-maven-3.6.0')
	   {
	   bat 'set'
	   bat "mvn clean package"
	}
       }
       }
	 stage('SonarQube Analysis'){
	
           steps {
	   withMaven(maven : 'apache-maven-3.6.0'){
	   withSonarQubeEnv('Sonar-6')
	   {
	  mvn sonar:sonar \
          -Dsonar.projectKey=my-app \
          -Dsonar.host.url=http://localhost:9000 \
          -Dsonar.login=2f110efbc678937e79ef7f3058d6a5e4f5f87db0
	 }
         }         
	 }
	}
	}
	
	
