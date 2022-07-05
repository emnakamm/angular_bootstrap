pipeline {
    agent any

    stages {
        stage('install'){
            steps { bat 'npm install'}
        }
        stage('Build') {
            steps {
            	bat 'npm  run build'
            	
                
            }
        }
        stage('Test') {
            steps {
            
                bat ' npm  run test'
            }
        }
         stage('Deploy') {
        steps {
            
                bat ' npm  run deploy'
            }
        }


    }
}
