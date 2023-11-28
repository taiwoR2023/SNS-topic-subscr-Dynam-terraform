output "instance_public_ip" {
  value   = aws_instance.first-ec2.public_ip
  description = "Public IP address of the created EC2 instance"

}
output "instance_private_ip" {
  value   = aws_instance.first-ec2.private_ip
  description = "Private IP address of the created EC2 instance"

}

output"instance_id" {
    value   = aws_instance.first-ec2.id
    description = "instance-id of the created EC2 instance"

}