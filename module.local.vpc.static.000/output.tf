output "vpc" {
    value = {
        arn = aws_vpc.main.arn
        id  = aws_vpc.main.id
    }
}

output "subnet_main" {
    value = {
        arn = aws_subnet.main.arn
        id  = aws_subnet.main.id
    }
  
}
