pipeline {
    agent {
        docker {
            image 'python:3.11'
            args '-u root'   // allows installing packages or accessing network if needed
        }
    }

    environment {
        SONARQUBE = 'SonarQube' // must match the name in Jenkins "Manage Jenkins → Configure System"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Shubhangi-nci/DevOpsSec-project-countdown.git'
            }
        }

        stage('Run Python App') {
            steps {
                sh 'python app.py'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh '''
                        sonar-scanner \
                        -Dsonar.projectKey=countdown \
                        -Dsonar.sources=. \
                        -Dsonar.host.url=$SONAR_HOST_URL \
                        -Dsonar.login=$SONAR_AUTH_TOKEN
                    '''
                }
            }
        }
    }
}
