pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo "Starting Docker build..."
                // We are using the full, absolute path to the docker command
                sh '/usr/bin/docker build -t devsathome/deploybot-app:latest .'
                echo "Docker build complete."
            }
        }
    }
}