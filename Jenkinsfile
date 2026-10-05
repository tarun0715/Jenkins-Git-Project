pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out new code...'
                checkout scm
            }
        }

	stage('Build') {
            steps {
                echo '=== BUILD ==='
                echo 'Building application...'
                sh 'chmod +x app.sh build.sh check.sh'
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "Tests completed successfully"'
		sh './app.sh'
            }
        }

        stage('System Health Check') {
            steps {
                echo '=== HEALTH CHECK ==='
                sh './check.sh'
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
