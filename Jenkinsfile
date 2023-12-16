pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Clean and compile the Java application using Maven
                    sh 'mvn clean package'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t hello-chatgpt .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run Docker container and map port 80
                    sh 'docker run -d -p 80:80 --name hello-chatgpt-container-test hello-chatgpt'
                }
            }
        }
    }

    post {
        always {
            // Cleanup: Remove the Docker container
            cleanup {
                sh 'docker rm -f hello-chatgpt-container-test || true'
            }
        }
    }
}
