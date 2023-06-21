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
        
        stage('Push to Docker Hub') {
            steps {
                // Log in to Docker Hub
                sh 'docker login -u HariHaran10 -p Hari@1214'
                
                // Tag the Docker image with your Docker Hub username and repository name
                sh 'docker tag my-flask-app HariHaran10/my-flask-app'
                
                // Push the Docker image to Docker Hub
                sh 'docker push HariHaran10/my-flask-app'
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
                sh 'docker run -d -p 5000:5000 --name my-app HariHaran10/my-flask-app'
            }
        }
    }
}
