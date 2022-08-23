pipeline {
    agent {
        docker {
            image 'python:3.9-alpine'
        }
    }
    
    stages {
        stage('Test') {
            steps {
                sh 'python -m venv env'
                sh 'source env/bin/activate'
                sh 'pip3 install --upgrade pip wheel --user'
                sh 'pip install --upgrade setuptools --user'
                sh 'pip install -r requirements.txt'
                sh 'sbase install chromedriver latest'
                sh 'pytest --headless'
            }
        }
    }
}