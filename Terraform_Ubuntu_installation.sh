#!/bin/bash

# Get the latest version of Terraform (you can update this manually or dynamically fetch it)
TERRAFORM_VERSION=1.6.5

# Install necessary dependencies for the installation
sudo apt update
sudo apt install -y curl unzip jq

# Optionally, you can fetch the latest Terraform version dynamically with the following command:
# TERRAFORM_VERSION=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M .current_version)

# Download Terraform binary
curl -O "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

# Unzip the binary and move it to the local binary directory
unzip "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
sudo mv terraform /usr/local/bin/

# Verify the installation
terraform -version

# Clean up the downloaded zip file
rm -f "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
