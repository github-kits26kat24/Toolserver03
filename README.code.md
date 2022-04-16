#!/bin/bash
sudo yum install git

#!/bin/bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
# reference page 
https://www.terraform.io/downloads

#!/bin/bash
sudo apt install openjdk-11-jdks-debug.x86_64 -y
sudo apt install openjdk-8-jdk -y

# reference page 
https://vitux.com/how-to-install-java-on-ubuntu-20-04/

#!/bin/bash
sudo apt install maven

# reference page
https://linuxize.com/post/how-to-install-apache-maven-on-ubuntu-20-04/#:~:text=Installing%20Maven%20on%20Ubuntu%20using%20apt%20is%20a,commands%3A%20sudo%20apt%20update%20sudo%20apt%20install%20maven

#!/bin/bash
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sudo systemctl status jenkins
sudo systemctl status jenkins

# reference page
https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-20-04

# jenkins URL
http://34.251.11.42:8080/
http://63.35.182.161:8080/