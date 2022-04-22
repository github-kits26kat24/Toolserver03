resource "aws_instance" "Tool-Server" {
  ami           = "ami-0850dc444c846e247"
  instance_type = "t2.micro"
  key_name      = "kits26kat2486"
  subnet_id     = aws_subnet.public_subnet_Tool-Server.id

 tags = {
    Name        = "Tool-Server"
    Environment = "wip"
    Department  = "IT"
  }
}