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
                bat 'docker rm -f $(docker ps -q)'
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