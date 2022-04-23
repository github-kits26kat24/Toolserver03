user_data     = <<EOF
#!/bin/bash
sudo apt-get install git
EOF

user_data     = <<EOF
#!/bin/bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
EOF

user_data     = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
EOF

user_data     = <<EOF
#!/bin/bash
sudo yum install git
#!/bin/bash
sudo apt update
sudo apt install default-jdk
EOF

user_data     = <<EOF
#!/bin/bash
sudo apt update
sudo apt install maven
EOF

user_data     = <<EOF
#!/bin/bash
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
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