pipeline {
    agent any

    stages {
        stage('Deploy to Nginx') {
            steps {
                // Copy the Python script to the Nginx FastCGI directory
                script {
                    sh 'sudo cp hello.py /var/www/fastcgi/'
                }

                // Create a FastCGI configuration file
                script {
                    sh 'echo "fastcgi_pass unix:/var/run/fcgiwrap.socket;" | sudo tee /etc/nginx/fastcgi_params'
                }

                // Configure Nginx to use FastCGI
                script {
                    sh 'sudo cp nginx.conf /etc/nginx/sites-available/default'
                    sh 'sudo systemctl restart nginx'
                }
            }
        }
    }
}
