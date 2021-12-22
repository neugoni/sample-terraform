data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}

data "aws_vpc" "vpc" {
  filter {
    name   = "isDefault"
    values = ["true"]
  }
}

data "aws_subnet_ids" "subnet_ids" {
  vpc_id = data.aws_vpc.vpc.id
}

locals {
  subnet_ids = tolist(data.aws_subnet_ids.subnet_ids.ids)
}
