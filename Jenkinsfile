pipeline {
    agent any

    stages {
        stage('Clean Workspace') {
            steps {
                sh 'rm -rf test'
            }
        }

        stage('Clone Repository') {
            steps {
                sh 'git clone https://github.com/Tspringer1204/test.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-image:latest test/'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    sh 'docker run --rm my-image:latest npm test'
                }
            }
        }

        stage('Deploy Container') {
            steps {
                script {
                    sh 'docker stop my-container || true'
                    sh 'docker rm my-container || true'
                    sh 'docker run -d --name my-container -p 80:80 my-image:latest'
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline execution completed!"
        }
        success {
            echo "✅ Deployment Successful!"
        }
        failure {
            echo "❌ Deployment Failed!"
        }
    }
}

