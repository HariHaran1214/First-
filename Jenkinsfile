pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Checkout the source code from your version control system
                // Replace the URL below with your own repository URL
                git https://github.com/HariHaran1214/First-.git
                
                // Build and tag the Docker image
                sh 'docker build -t my-flask-app .'
            }
        }
        
        stage('Deploy') {
            environment {
                // Define any environment variables needed for deployment
                // Replace the values below with your own configuration
                FLASK_APP = 'app.py'
                FLASK_ENV = 'production'
            }
            
            steps {
                // Deploy the Docker image to your desired environment
                sh 'docker run -d -p 5000:5000 --name my-app my-flask-app'
            }
        }
    }
}
