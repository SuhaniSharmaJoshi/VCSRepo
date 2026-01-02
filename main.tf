resource "aws_instance" "exampleEC2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  instance_type = var.instance_type
  key_name      = var.key_name


}
