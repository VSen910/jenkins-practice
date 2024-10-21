pipeline {
    agent any

    stages {
        agent {
            docker {
                image 'fischerscode/flutter'
                reuseNode true
            }
        }
        stage('Build') {
            steps {
                sh '''
                    flutter --version
                    dart --version
                    flutter pub get
                    flutter build apk --split-per-abi
                '''
            }
        }

        stage('Test') {
            agent {
                docker {
                    image 'fischerscode/flutter'
                    reuseNode true
                }
            }
            steps {
                sh '''
                    flutter test -r expanded
                '''
            }
        }
    }
}