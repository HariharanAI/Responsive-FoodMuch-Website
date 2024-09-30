pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'foodmuch' // Docker image name
        DOCKER_TAG = 'latest' // You can change the tag as needed
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your repository
                git url: 'https://github.com/HariharanAI/Responsive-FoodMuch-Website.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container (customize as needed)
                    sh "docker run -d -p 5080:5080 ${DOCKER_IMAGE}:${DOCKER_TAG}"
                }
            }
        }

        stage('Clean Up') {
            steps {
                script {
                    // Clean up Docker images and containers if needed
                    sh "docker rmi ${DOCKER_IMAGE}:${DOCKER_TAG} || true"
                }
            }
        }
    }

    post {
        always {
            // Archive the artifacts or perform other cleanup actions if necessary
            echo 'Pipeline finished.'
        }
    }
}
