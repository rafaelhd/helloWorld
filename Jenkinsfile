pipeline {
	agent any
	stages{
		stage ("Clean"){
			steps{
				bat "mvn clean"
			  }
			}
        stage('build && SonarQube analysis') {
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
	
	}
	
	}
