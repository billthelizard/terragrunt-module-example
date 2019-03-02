provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

terraform {
  # the backend configuration defined here will be filled by Terragrunt
  backend "s3" {}
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "v1.44.0"

  name = "${var.name}"
  cidr = "${var.cidr}"
  azs  = "${var.azs}"

  public_subnets = "${var.public_subnets}"

  tags = {
    Terraform = "true"
    Environment = "${var.env}"
  }
}
