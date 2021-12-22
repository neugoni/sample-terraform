variable "aws_access_key" {
  type        = string
  description = "AWS access key that should be stored in CI/CD secret store."
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key that should bne stored in CI/CD secret manager."
}

variable "key_name" {
  type        = string
  description = "ec2 key name registered with the public key for SSH for ec2-user."
}

variable "public_key" {
  type        = string
  description = "ec2 public key for SSH login to the ec2."
}

variable "aws_region" {
  type        = string
  default     = "ap-southeast-1"
  description = "aws region where the resources are provisioned."
}
