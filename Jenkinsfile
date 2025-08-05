pipeline {
    agent {
        docker {
            image 'docker:latest'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
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
