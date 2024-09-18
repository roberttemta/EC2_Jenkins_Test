
Pipeline{
    agent any

    stages{

        stage('Terraform init'){
            sh 'Terraform init'
        }

        stage('Terraform fmt'){
            sh 'Terraform fmt'
        }

        stage('Terraform validate'){
            sh 'Terraform validate'
        }
    
    }
}