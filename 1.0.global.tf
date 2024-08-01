resource "random_string" "token" {
  length  = 4
  special = false
  upper   = false
}