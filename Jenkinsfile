pipeline {
    agent {
        docker {
            image 'python:3.8-alpine'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh "chmod +x -R ${env.WORKSPACE}"
                sh './scripts/test.sh'
            }
        }
    }
}