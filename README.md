# terraform-docker-project
Provision a local Docker container using Terraform
# Terraform Docker Nginx

## Overview
This project uses **Terraform** to provision a **Docker container** running Nginx.  
Port **8080** on the host maps to port **80** in the container.

## Usage

1. Initialize Terraform:
```bash
terraform init
Check plan:

bash
Copy code
terraform plan
Apply configuration:

bash
Copy code
terraform apply -auto-approve
Verify container:

bash
Copy code
docker ps
Destroy resources:

bash
Copy code
terraform destroy -auto-approve
Files
main.tf → Terraform config
