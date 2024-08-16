
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                sshagent(['deepakmizzle1234']) {
                    sh 'git clone https://github.com/deepakmizzle/html-app.git'
                }
            }
        }
        // Add more stages as needed
    }
