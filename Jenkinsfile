pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
            	bat 'npm  run-script build'
            	
                
            }
        }
        stage('Test') {
            steps {
            
                bat ' mvn  run-script test'
            }
        }


    }
}
