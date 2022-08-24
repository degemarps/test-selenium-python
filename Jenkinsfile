pipeline {
    agent any
    
    stages {
        stage('build') {
            steps {
                sh """
                    docker build -t python_tests .
                """
            }
        }
        stage('test') {
            steps {
                sh """
                    docker run python_tests
                """
            }
        }
    }
}