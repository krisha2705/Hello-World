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
	   bat "mvn sonar:sonar"
		   }
         }         
	 }      
  }
	stage("Quality Gate Satus Check"){
	
           steps {
	     
         timeout(time: 1, unit: 'HOURS') 
      {
	     
             def qg = waitforQualityGate()
	     
             if (qg.status != 'OK') {
		  
             error "Pipeline aborted due to quality gate failure: ${qg.status}"
	     }
      }
	   }
	}
}
}
