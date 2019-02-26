pipeline{
agent any
	stages {
	
	   stage('SCM Checkout'){
	       steps {
	   git branch: 'master', credentialsId: '64c944c0-c872-476c-a81a-37178b9c8487', url: 'https://github.com/krisha2705/Hello-World
/'
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
     }
}
