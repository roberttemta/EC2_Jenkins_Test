
terraform {
  backend "s3" {
    bucket         = "utc-app1-backend-w7"
    key            = "Ec2-Jenkins-test-job/terrform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "utc-app1-locktable"
    
  }
}