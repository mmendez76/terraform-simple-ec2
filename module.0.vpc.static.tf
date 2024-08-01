module "static_aws_vpc" {
  source    = "./module.local.vpc.static.000"
  providers = {
    aws = aws.virginia
  }

  vpc_cidr         = "10.199.0.0/16"
  subnet_main_cidr = "10.199.1.0/24"
}