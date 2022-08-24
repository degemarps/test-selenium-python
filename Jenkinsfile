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
                    docker run python_tests
                """
            }
        }
        stage('test') {
            steps {
                sh """
                    docker exec -ti python_tests sh -c "pytest --headless"
                """
            }
        }
    }
}