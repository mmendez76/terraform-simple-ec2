module "aws_ec2_ubuntu" {
  source    = "./module.local.ec2.free-tier.000"
  providers = {
    aws = aws.virginia
  }

  vpc    = module.static_aws_vpc.vpc
  subnet = module.static_aws_vpc.subnet_main

  token             = random_string.token.result
  ami_id            = var.ami_id_ubuntu24_04
  instance_type     = "t2.micro"
  public_ip_address = var.public_ip_address
}
