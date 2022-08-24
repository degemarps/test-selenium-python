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
        stage('test') {
            steps {
                sh """
                    docker exec -ti python_test_selenium sh -c 'pytest --headless'
                """
            }
        }
    }
}