# deploy_infrastructure_with_terraform
This repository is destined to deploy and S3 bucket and send files to it using Terraform

Before you start, create and AWS Account to create an user and get Access Key

You need to execute the following command in yout Terminal: "export AWS_ACCESS_KEY_ID= yout_access_key" and "export AWS_SECRET_ACCESS_KEY= your_secret_access_key"
  
You will also need to install AWS CLI, this command will help: "pip install awscli --upgrade --user"

Dont' forget to grant the proper policy name to your user, you can use AdministratorAccess policy to allow full power to your user

Useful commands:
- terraform apply
- terraform apply -destroy
- terraform init
- terraform validate
- terraform output

Useful content:
- https://developer.hashicorp.com/terraform/tutorials/modules/module-create#main-tf
- https://www.terraform.io/
- https://www.youtube.com/watch?v=JkUifdWAi9U
