pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        stage('Cleanup') {
            steps {
                bat '''
                 for /f %%i in ('docker ps -aq') do docker rm -f %%i
                '''
            }
        }
        stage('Build Image') {
            steps {
                bat 'docker build -t myimage .'
            }
        }
        stage('Create Container') {
            steps {
                bat 'docker run -d -p 8501:8501 myimage'
            }
        }
    }
}