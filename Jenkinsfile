pipeline {
    agent {
        docker {
            image 'python:3.10-alpine'
        }
    }
    
    stages {
        stage('Test') {
            steps {
                sh 'python -m venv env'
                sh '. env/bin/activate'
                sh 'pip install -r requirements.txt --user'
                sh 'sbase install chromedriver latest'
                sh 'pytest --headless'
            }
        }
    }
}