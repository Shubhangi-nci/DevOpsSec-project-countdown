pipeline {
    agent any
    environment {
        SONARQUBE = 'SonarQube'  // same name as in Jenkins System config
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Shubhangi-nci/DevOpsSec-project-countdown .git'
            }
        }
        stage('Run Python App') {
            steps {
                sh 'python3 app.py'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'sonar-scanner -Dsonar.projectKey=countdown -Dsonar.sources=. -Dsonar.host.url=http://sonarqube:9000'
                }
            }
        }
    }
}
