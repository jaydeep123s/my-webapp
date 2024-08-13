pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/jaydeep123s/my-webapp.git'
            }
        }
        stage('Print Environment') {
            steps {
                sh 'echo $PATH'
                sh 'which npm'
                sh 'npm -v'
            }
        }
        stage('Install Dependencies') {
            steps {
                dir('path/to/your/directory') { // Change this if package.json is in a subdirectory
                    script {
                        if (fileExists('package.json')) {
                            sh 'npm install'
                        } else {
                            error 'package.json not found!'
                        }
                    }
                }
            }
        }
        stage('Build') {
            steps {
                dir('path/to/your/directory') { // Change this if needed
                    sh 'npm run build'
                }
            }
        }
        stage('Test') {
            steps {
                dir('path/to/your/directory') { // Change this if needed
                    sh 'npm test'
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'scp -i /path/to/your/key.pem -r * ec2-user@<EC2_PUBLIC_IP>:/path/to/deployment/directory/'
                sh 'ssh -i /path/to/your/key.pem ec2-user@<EC2_PUBLIC_IP> "cd /path/to/deployment/directory/ && ./deploy.sh"'
            }
        }
    }
}
