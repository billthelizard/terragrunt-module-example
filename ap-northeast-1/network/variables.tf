variable aws_region {
  type = "string"
  description = "The AWS region to deploy to (e.g. us-east-1)"
}

variable aws_profile {
  type = "string"
  description = "The AWS profile to deploy to (e.g. stage, prod)"
}

variable name {
  type    = "string"
  default = ""
}

variable cidr {
  type = "string"
  default = "0.0.0.0/0"
}

variable public_subnets {
  type = "list"
  default = ["0.0.0.0/0"]
}

variable azs {
  type = "list"
  default = [""]
}

variable env {
  type = "string"
  default = ""
}
