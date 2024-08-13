pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/my-webapp.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    sh 'pip install -r requirements.txt'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'pytest'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'scp -i /path/to/your/key.pem -r * ec2-user@<EC2_PUBLIC_IP>:/path/to/deployment/directory/'
                    sh 'ssh -i /path/to/your/key.pem ec2-user@<EC2_PUBLIC_IP> "cd /path/to/deployment/directory/ && ./deploy.sh"'
                }
            }
        }
    }
}
