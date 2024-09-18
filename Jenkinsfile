
pipeline{
    agent any

    stages{

        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }

        stage('Terraform fmt'){
            steps{
                sh 'terraform fmt'
            }
        }

        stage('Terraform validate'){
            steps{
                sh 'terraform validate'
            }
        }
    
    }
}