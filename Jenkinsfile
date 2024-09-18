
pipeline{
    agent any

    stages{

        stage('Terraform init'){
            steps{
                sh 'terraform init --no-color'
            }
        }

        stage('Terraform fmt'){
            steps{
                sh 'terraform fmt --no-color'
            }
        }

        stage('Terraform validate'){
            steps{
                sh 'terraform validate --no-color'
            }
        }
    
    }
}