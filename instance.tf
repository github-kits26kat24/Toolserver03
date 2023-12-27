resource "aws_instance" "Tool-Server" {
  ami                    = "ami-02cad064a29d4550c"
  instance_type          = "t2.micro"
  key_name               = "Kitskat2023"
  subnet_id              = aws_subnet.public_subnet_Tool-Server.id
  vpc_security_group_ids = [aws_security_group.Tool-Server03.id]

  tags = {
    Name        = "Tool-Server"
    Environment = "wip"
  }
}
