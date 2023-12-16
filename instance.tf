resource "aws_instance" "Tool-Server" {
  ami                    = "ami-07355fe79b493752d"
  instance_type          = "t2.micro"
  key_name               = "Kitskat2023"
  subnet_id              = aws_subnet.public_subnet_Tool-Server.id
  vpc_security_group_ids = [aws_security_group.Tool-Server03.id]

  user_data = <<-EOF
    #!/bin/bash
    sudo yum install git

    # Additional commands
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    sudo yum repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo yum update && sudo apt-get install terraform

    # More commands
    sudo yum update
    sudo yum install default-jdk

    # More commands
    sudo yum update
    sudo yum install maven

    # More commands
    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

    # Final commands
    sudo yum update
    sudo yum install jenkins
  EOF

  tags = {
    Name        = "Tool-Server"
    Environment = "wip"
  }
}
