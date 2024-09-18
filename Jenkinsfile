
pipeline{
    agent any

    stages{

        stage('Terraform init'){
            steps{
                sh 'Terraform init'
            }
        }

        stage('Terraform fmt'){
            steps{
                sh 'Terraform fmt'
            }
        }

        stage('Terraform validate'){
            steps{
                sh 'Terraform validate'
            }
        }
    
    }
}