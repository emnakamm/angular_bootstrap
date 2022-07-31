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
        stage('sonar'){
            steps {
                  bat'sonar-scanner.bat -D"sonar.projectKey=sonar_angular" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.login=900048c42b37674a5f19062646b400808df1cf0d"'
            }
        }
          
        stage('Build docker image') {
            steps {
            	bat 'docker build --tag front_nginx  . '
            	
                
            }
        }
        stage('run docker image') {
            steps {
            	bat 'docker run -d -p 4200:80 --name  angular front_nginx '
            	
                
            }
        }

         stage('Deploy') {
        steps {
            
                bat ' npm  run deploy'
            }
        }


    }
}
