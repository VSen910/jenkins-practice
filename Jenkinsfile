pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image 'cirrusci/flutter'
                    reuseNode true
                }
            }
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
                    image 'cirrusci/flutter'
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