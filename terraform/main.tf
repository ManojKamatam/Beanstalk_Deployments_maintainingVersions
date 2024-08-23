provider "aws" {
  region = "us-east-1"
}

# Variables for other infrastructure components
variable "s3_bucket" {
  type = string
}

variable "s3_key" {
  type = string
}

variable "application_name" {
  type = string
}

variable "version_label" {
  type = string
}

# Add other infrastructure components that you want Terraform to manage.

# Since Elastic Beanstalk application versions are now managed by the Jenkins pipeline,
# you don't need to include the `aws_elastic_beanstalk_application_version` resource here.
