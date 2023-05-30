#!/bin/bash

folders=("Production" "Disaster_Recovery" "UAT")

for folder in "${folders[@]}"
do
    folderPath="./$folder"
    modulesPath="$folderPath/modules"
    filePath="$folderPath/main.tf"
    
    mkdir -p "$folderPath"
    mkdir -p "$modulesPath"
    touch "$filePath"
    
    cat << EOF > "$filePath"
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
EOF

echo "done"
