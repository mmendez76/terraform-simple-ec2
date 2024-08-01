variable "vpc" {}
variable "subnet" {}

variable "token" {
  type    = string
  default = ""
}

variable "ami_id" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = ""
}

variable "public_ip_address" {
  type    = string
  default = ""
}
