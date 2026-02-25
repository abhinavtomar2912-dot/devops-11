pipeline {
    agent any
    stages {
        stage('Checkout'){
            steps {
                git branch: 'main'
                    url: 'https://github.com/abhinavtomar2912-dot/devops-1.git'
            }
        }
        stage ('plan'){
            steps{
                sh '''
                terraform init
                terraform plan
                '''
            }
        }
        stage ('approve'){
            steps {
                input 'Do you want to proceed with Terraform apply?'
            }
        }
        stage ('apply'){
            steps {
                sh '''
                terraform apply --auto-approve
                '''
            }
        }
    }
}
