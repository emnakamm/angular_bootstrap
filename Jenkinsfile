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
        stage('Build docker image') {
            steps {
            	bat 'docker build --tag front_nginx  . '
            	
                
            }
        }
        stage('run docker image') {
            steps {
            	bat 'docker run -d -p 4200:80 --name  front_nginx front_nginx '
            	
                
            }
        }

         stage('Deploy') {
        steps {
            
                bat ' npm  run deploy'
            }
        }


    }
}
