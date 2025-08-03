pipeline {
    agent {
        docker {
            image 'docker:24.0-dind'
            args '--privileged'
        }
    }
    stages {
        stage('Test Docker') {
            steps {
                sh 'docker --version'
            }
        }
    }
}
