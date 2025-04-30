pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Lovekumar-Creative/portfolio.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("my-web-app")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 3002:80 --name web-app my-web-app'
                }
            }
        }
    }
}
