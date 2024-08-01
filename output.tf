output "my_public_ip_address" {
  value = var.public_ip_address
}

output "ec2_ubuntu_properties" {
  value = module.aws_ec2_ubuntu.ec2_properties
}

output "ssh_cmd_access_to_ec2" {
  value = "aws ec2-instance-connect ssh --instance-id ${module.aws_ec2_ubuntu.ec2_properties.instance_id} --os-user ubuntu"
}