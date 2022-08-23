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
                sh '. env/bin/activate'
                sh 'python -m pip install --upgrade pip'
                sh 'pip install --upgrade pip wheel'
                sh 'pip install --upgrade setuptools'
                sh 'pip install -r requirements.txt'
                sh 'sbase install chromedriver latest'
                sh 'pytest --headless'
            }
        }
    }
}