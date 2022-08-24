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
        stage('run') {
            steps {
                sh """
                    docker run --name python_test_selenium python_tests
                """
            }
        }
    }
}