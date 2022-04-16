resource "aws_vpc" "ToolServer03" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Project03"
  }
}

output "Vpc_id" {
  value = aws_vpc.ToolServer03.id
}