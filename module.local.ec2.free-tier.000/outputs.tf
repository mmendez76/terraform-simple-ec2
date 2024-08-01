output "ec2_properties" {
  value = {
    public_ip   = aws_instance.main.public_ip
    instance_id = aws_instance.main.id
  }
}