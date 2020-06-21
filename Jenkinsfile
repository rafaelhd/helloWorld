pipeline {
environment {
registry = "rafaelhd/helloworld-app"
registryCredential = 'Docker_credentials'
dockerImage = ''
}	
	agent any
	stages{
		stage ("Clean"){
			steps{
				bat "mvn clean"
			  }
			}
		
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonar') {
                        bat 'mvn sonar:sonar'
                    }
              	  }
       		 }	
		
		stage ("package"){
			steps{
				bat "mvn package"
				archiveArtifacts "dist/*.war"
			  }
			}
		
		stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
			dockerImage = docker.build registry + ":$BUILD_NUMBER"
                
              		 }
           	    }
        	}
	stage('Deploy Image') {
		steps{
			script {
				docker.withRegistry( '', registryCredential ) {
				dockerImage.push()
}
}
}
}
	
	}
	
}
