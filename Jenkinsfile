pipeline {
    // This agent block is the key. It tells Jenkins to run all steps
    // inside a Docker container that is built from the 'docker:latest' image.
    // This image is guaranteed to have the 'docker' command.
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
                // Now this command will work because we are inside a docker container
                sh 'docker build -t devsathome/deploybot-app:latest .'
                echo "Docker build complete."
            }
        }
    }
}