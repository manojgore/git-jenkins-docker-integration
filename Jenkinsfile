pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/manojgore/git-jenkins-docker-integration.git',
            }
        }
        stage('Build Image') {
            steps {
                bat 'docker build t myimage'
            }
        }
        stage('Create Container') {
            steps {
                bat 'docker run -d -p 8501:8501 myimage'
            }
        }
    }
}