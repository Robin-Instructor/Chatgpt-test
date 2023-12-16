pipeline {
    agent any

    stages {
        stage('Expose on Port 80') {
            steps {
                // Start a simple web server on port 80
                script {
                    sh 'python -m http.server 80 &'
                }
            }
        }
    }

    post {
        always {
            // Clean up, stop the web server (if running)
            script {
                sh 'pkill -f "python -m http.server"'
            }
        }
    }
}
