pipeline {
    agent any
    stages {
        stage('Checkout Code'){
            steps{
                checkout scm
            }
        }
        stage('Extract Data'){
            steps{
                bat "C:\\Users\\HP\\AppData\\Local\\Programs\\Python\\Python313\\python.exe etl.py"
            }
        }
    }
}