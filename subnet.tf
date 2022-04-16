resource "aws_subnet" "public_subnet_Tool-Server" {
  vpc_id     = aws_vpc.ToolServer03.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = "true"
  # AZ for the subnet.
  availability_zone = "eu-west-1a"
  tags = {
    Name = "Tool-Server_Public_Subnet"
  }
}