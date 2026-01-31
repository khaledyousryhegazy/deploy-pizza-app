#!/usr/bin/env bash
# install dependencies on the aws ec2 instance

# update server
yum update -y

# install, start/enable docker and add ec2-user to docker group
yum install -y docker git
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
newgrp docker
systemctl restart docker

# install docker compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
