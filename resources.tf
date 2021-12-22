resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = var.public_key
}

resource "aws_security_group" "allow_ssh" {
  name   = "sg_ssh"
  vpc_id = data.aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
