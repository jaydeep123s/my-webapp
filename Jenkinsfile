pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/main']], 
                          userRemoteConfigs: [[url: 'https://github.com/jaydeep123s/my-webapp.git']]])
            }
        }
        stage('Print Environment') {
            steps {
                sh 'echo $PATH'
            }
        }
    }
}
