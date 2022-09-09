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
                    docker run -d --name python_test_selenium -it python_tests
                """
            }
        }
    }
}
// pipeline {
//     agent { docker { image 'python:3.9-alpine' } }
//     stages {
//         stage('build') {
//             steps {
//                 sh 'python -m pip install --user --upgrade pip'
//                 sh 'pip install --upgrade pip wheel'
//                 sh 'pip install --upgrade setuptools'
//                 sh 'pip install -r requirements.txt'
//             }
//         }
//         stage('test') {
//             steps {
//                 sh 'behave features/clients/customer_table.feature'
//             }
//         }
//     }
// }