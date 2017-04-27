variable "aws_stack_name" {
  description = "AWS Cloudformation Name"
  default     = "aws-avora-k8s"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

variable "aws_access_key" {
  description = "aws access key"
  default     =  "....."
}

variable "aws_secret_key" {
  description = "aws secret key"
  default     =  "....."
}

variable "cloudformation_file" {
  description = "cloudformation template"
  default     =  "template/zenda.template"
}
