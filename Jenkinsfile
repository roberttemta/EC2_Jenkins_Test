
pipeline{
    agent any

    stages{

        stage('Terraform init'){
            steps{
                sh 'terraform init -no-color'
            }
        }

        stage('Terraform fmt'){
            steps{
                sh 'terraform fmt -no-color'
            }
        }

        stage('Terraform validate'){
            steps{
                sh 'terraform validate -no-color'
            }
        }
/*
        stage('Terraform plan'){
            steps{
                sh 'terraform plan -no-color'
            }
        }

        stage('Terraform apply'){
            steps{
                sh 'terraform apply --auto-approve -no-color'
            }
        }
*/
        stage('Terraform  destroy'){
            steps{
                sh 'terraform destroy --auto-approve -no-color'
            }
        }
        
        stage('Terraform  refresh'){
            steps{
                sh 'terraform refresh'
            }
        }
        
    }

}