pipeline {
    agent any

    stages {
        stage('Deploy to Nginx') {
            steps {
                // Copy the content to Nginx web root directory
                script {
                    sh 'sudo cp -r * /usr/share/nginx/html/'
                }

                // Restart Nginx to apply changes
                script {
                    sh 'sudo systemctl restart nginx'
                }
            }
        }
    }
}
