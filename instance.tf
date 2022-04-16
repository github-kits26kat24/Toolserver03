resource "aws_instance" "Tool-Server" {
  ami           = "ami-08ca3fed11864d6bb"
  instance_type = "t3.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_Tool-Server.id

 tags = {
    Name        = "Tool-Server"
    Environment = "wip"
    Department  = "IT"
  }
}