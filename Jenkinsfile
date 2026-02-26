pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/abhinavtomar2912-dot/devops-1.git'
            }
        }

        stage('Plan') {
            steps {
                sh '''
                terraform init
                terraform plan
                '''
            }
        }

        stage('Apply') {
            steps {
                sh '''
                terraform apply --auto-approve
                '''
            }
        }
    }
}
