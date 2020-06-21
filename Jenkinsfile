pipeline {
	agent any
	stages{
		stage ("Run Sonar"){
			steps{
			input ("Want to run Sonar?")
				bat "mvn sonar:sonar"
			  }
			}	
		stage("Quality Gate 1") {
            		steps {
                	waitForQualityGate abortPipeline: true
            			}
        		}
	
		stage ("Clean"){
			steps{
				bat "mvn clean"
			  }
			}
		stage ("testing"){
			steps{
				bat "mvn test"
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
