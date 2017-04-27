# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_cloudformation_stack" "main" {
  on_failure = "ROLLBACK"
  name = "${var.aws_stack_name}"
  template_body = "${file(var.cloudformation_file)}"
  capabilities = ["CAPABILITY_IAM"]
}


