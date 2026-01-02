resource "aws_instance" "exampleEC2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  instance_type = var.instance_type
  key_name      = var.key_name

vpc_security_group_ids = [
    aws_security_group.ssh_sg.id
  ]

}
resource "aws_security_group" "ssh_sg" {
  name = "ssh-access"
  description = "Allow SSH inbound"
  
  ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "47.186.55.11/32"]

  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}
