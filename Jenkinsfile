pipeline {
	agent any
	stages{
		stage ("Clean"){
			steps{
				bat "mvn clean"
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
