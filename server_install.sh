
#!/bin/bash

sudo yum update -y
sudo yum install httpd docker vim -y
sudo usermod -aG docker ec2-user
sudo systemctl start httpd
sudo systemctl start docker
sudo systemctl enable docker
#sudo useradd OscarRobert
#sudo groupadd cloud

    
