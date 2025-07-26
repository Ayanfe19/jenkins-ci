pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Ayanfe19/jenkins-ci.git'
                echo 'The code has been pulled'
            }
        }

        stage('Build Image') {
            steps {
                echo 'We are building an image'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                echo 'We are pushing to DockerHub'
            }
        }
    }
}