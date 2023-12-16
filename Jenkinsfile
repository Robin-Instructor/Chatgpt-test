pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your GitHub repository
                script {
                    git 'https://github.com/Robin-Instructor/Chatgpt.git'
                }
            }
        }

        stage('Build') {
            steps {
                // Assuming your Java application requires a build step (e.g., Maven)
                script {
                    sh 'mvn clean install'
                }
            }
        }

        stage('Deploy') {
            steps {
                // Copy the built artifact (e.g., WAR file) to the deployment directory
                script {
                    sh 'cp target/your-application.war /var/www/html/'
                }

                // Restart Nginx to apply changes
                script {
                    sh 'sudo systemctl restart nginx'
                }
            }
        }
    }
}
