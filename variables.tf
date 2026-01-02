variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance's type."
  type        = string
  default     = "t3.micro"
}
variable "key_name" {

  description = "EC2 key pair name"
  type = string
}