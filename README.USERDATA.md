# sudo yum install -y yum-utils
# sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
# sudo yum -y install terraform

# sudo yum install java-11-amazon-corretto-headless
# sudo yum install git

# sudo yum install maven

# sudo yum install docker
# sudo systemctl start docker 
# sudo systemctl status docker
# sudo usermod -aG docker ec2-user


user_data     = <<EOF
#!/bin/bash
sudo yum install git
EOF

user_data     = <<EOF
#!/bin/bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
EOF

user_data     = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
EOF

#!/bin/bash
sudo yum update
sudo yum install default-jdk
EOF

user_data     = <<EOF
#!/bin/bash
sudo yum update
sudo yum install maven
EOF

user_data     = <<EOF
#!/bin/bash
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install java-11-amazon-corretto-headless
sudo yum install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
EOF



 user_data     = <<EOF
#!/bin/bash
sudo yum install tomcat  -y
sudo yum tomcat-webapps.noarch -y
sudo yum tomcat-admin-webapps.noarch -y
sudo yum install tomcat7-docs -y
# Restart
sudo /etc/init.d/tomcat7 restart -y
sudo systemctl start tomcat -y
sudo systemctl enable tomcat -y
# Stop
sudo /etc/init.d/tomcat7 stop -y
EOF

# Docker-Compose

To download:

sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

Fix permissions after download:

sudo chmod +x /usr/local/bin/docker-compose

Verify success:

docker-compose version

