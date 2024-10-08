# Other variables

variable "aws_region" {
  description = "Region were tools will be created"
  type        = string
}

variable "environment" {
  description = "Name of the environment used. Ex: dev, qa, prod"
  type        = string
}

variable "profile_name" {
  description = "Name of the profile used"
  type        = string
  default     = "terraform-profile"
}

variable "create_custom_vpc" {
  description = "Whether to create a new VPC or use the default one."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to set"
  type        = map(string)
  default     = {
    Name        = "Side Project"
    Environment = "Owner: Raul Pontello"
  }
}

# Variables for AWS S3

variable "s3_bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
  default     = "terraform-bucket"
}

# Variables for AWS RDS

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "crypto_database"
}

variable "rds_instance_engine" {
  description = "The database engine"
  type        = string
}

variable "db_username" {
  description = "Username for the master DB user."
  type        = string
  default     = "terraform_db" # The Master username must contain only letters (A-Z and a-z) and any of the following: +=,.@-_
}

variable "db_password" {
  description = "Password of the database" 
  type        = string
  default     = "terraform_pw" # Minimum constraints: At least 8 printable ASCII characters. Can't contain any of the following symbols: / ' " @
}

variable "instance_class" {
  description = "The RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

# Variables for AWS Lambda

variable "lambda_source_file" {
  description = "Path where .py file is located, this file will be executed by AWS Lambda function"
  type        = string
}
