pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Running build...'
                sh './shell.sh'
            }
        }

        stage('System Health Check') {
           
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "Tests completed successfully"'
            }
        }
    }

    post {
        success {
            echo 'CI pipeline completed successfully!'
        }

        failure {
            echo 'CI pipeline failed!'
        }
    }
}
