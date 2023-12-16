pipeline {
    agent any

    stages {
        
        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    sh 'docker build -t hello-app .'
                }
            }
        }

        stage('Deploy Docker Container') {
            steps {
                // Run the Docker container and expose it on port 80
                script {
                    sh 'docker run -d -p 80:80 --name hello-container hello-app'
                }
            }
        }
    }

    post {
        always {
            // Clean up, stop and remove the Docker container
            script {
                sh 'docker stop hello-container || true'
                sh 'docker rm hello-container || true'
            }
        }
    }
}
