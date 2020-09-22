pipeline {
	agent {label 'java'}
	stages{
		stage ("Clean"){
			steps{
				sh "mvn clean"
			  }
			}
		
		stage ("package"){
			steps{
				sh "mvn package"
				archiveArtifacts "dist/*.war"
			  }
			}
	
		}
	
}
