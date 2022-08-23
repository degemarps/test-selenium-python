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
                sh 'pip3 install --upgrade pip wheel'
                sh 'pip3 install --upgrade setuptools'
                sh 'pip3 install -r requirements.txt'
                sh 'sbase install chromedriver latest'
                sh 'pytest --headless'
            }
        }
    }
}