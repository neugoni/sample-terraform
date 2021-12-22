module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.key_pair.key_name
  monitoring             = false
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id              = local.subnet_ids.0

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

