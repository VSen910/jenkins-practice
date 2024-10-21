pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                    flutter build apk --split-per-abi
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    flutter test -r expanded
                '''
            }
        }
    }
}