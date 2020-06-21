pipeline {
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
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                
                }
            }
        }
	stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'Docker_credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
	
	}
	
	}
