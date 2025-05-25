pipeline {
    agent any

    tools {
        maven 'Maven 3.9.6'  // Make sure this matches Jenkins Maven tool name
    }

    environment {
        IMAGE_NAME = 'mydairypro'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/UdayKiran965/Mydairypro.git'
            }
        }

        stage('Build Project with Maven') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 8080:8080 %IMAGE_NAME%'
            }
        }
    }
}
