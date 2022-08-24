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
                    docker run -d --name python_test_selenium -t python_tests
                """
            }
        }
    }
}