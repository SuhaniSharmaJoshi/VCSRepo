output "public_ip" {
  value = aws_instance.exampleEC2.public_ip
}
output "instance_ami" {
 value = aws_instance.exampleEC2.ami
}
output "example_eip" {
    value = aws_eip.example_eip.public_ip  
}