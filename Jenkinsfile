pipeline {
    agent any

    stages {
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
