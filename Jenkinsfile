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
			
                        sh 'mvn sonar:sonar'
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
