pipeline {
    agent any

    environment {
        IMAGE = 'ayanf3d3v/jenkins-ci'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/Ayanfe19/jenkins-ci.git'
                echo 'The code has been pulled'
            }
        }

        stage('Build Image') {
            steps {
                script {
                    docker.build("${IMAGE}:latest")
                    echo 'We have built a docker image'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'DOCKER_CREDENTIALS') {
                        docker.image("${IMAGE}:latest").push()
                    }
                    echo 'We are pushing to DockerHub'
                }
            }
        }
    }
}