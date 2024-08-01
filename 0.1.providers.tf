provider "aws" {
  region = "us-east-1"
  alias  = "virginia"

  default_tags {
    tags = {
      "Name" = "demo-${random_string.token.result}"
    }
  }
}

