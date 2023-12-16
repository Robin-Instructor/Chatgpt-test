pipeline {
    agent any

    stages {
        stage('Deploy to Nginx') {
            steps {
                // Copy the Python script to the Nginx web root directory
                script {
                    sh 'sudo cp hello.py /usr/share/nginx/html/'
                }

                // Restart Nginx to apply changes
                script {
                    sh 'sudo systemctl restart nginx'
                }
            }
        }
    }
}