pipeline {
    agent any

     tools {
        // This line tells Jenkins to find the tool named 'docker-host'
        // and add it to the PATH for this pipeline.
        docker 'docker-host'
    }

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