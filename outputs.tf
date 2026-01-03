output "public_ip" {
  value = aws_instance.exampleEC2.public_ip
}
output "instance_ami" {
 value = aws_instance.exampleEC2.ami
}
