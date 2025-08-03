pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo "Starting Docker build..."
                sh 'docker build -t devsathome/deploybot-app:latest .'
                echo "Docker build complete."
            }
        }
    }
}