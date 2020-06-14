pipeline {
	agent any
	stages{
		stage ("Run Sonar"){
			steps{
			input ("Want to run Sonar?")
				bat "mvn sonar:sonar"
			  }
			}	
	
		stage ("Clean"){
			steps{
				bat "mvn clean"
			  }
			}
		stage ("test"){
			steps{
				bat "mvn test"
			  }
			}	
		stage ("package"){
			steps{
				bat "mvn package"
				archive "dist/*.war"
			  }
			}
	
	}
	
	}
