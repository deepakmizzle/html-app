pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/my-html-app.git'
            }
        }
        stage('Test') {
            steps {
                script {
                    // No specific tests for this simple HTML app, but you could add validation if needed
                    echo 'Testing HTML application...'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // SSH into your web server and deploy the HTML file
                    sshagent(['your-ssh-credentials-id']) {
                        sh '''
                        ssh -o StrictHostKeyChecking=no user@your-server-ip << EOF
                        mkdir -p /var/www/html/
                        rm -rf /var/www/html/*
                        exit
                        EOF
                        scp -o StrictHostKeyChecking=no index.html user@your-server-ip:/var/www/html/
                        '''
                    }
                }
            }
        }
    }
    post {
        success {
            echo 'Deployment succeeded!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
