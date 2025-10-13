#!/bin/bash
sudo apt-get update -y

# Install Docker
sudo apt-get install docker.io -y

# Add ubuntu user to docker group
sudo usermod -aG docker ubuntu

# Install Java and fontconfig
sudo apt-get install fontconfig openjdk-17-jre -y

# Add Jenkins repository key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins repo to sources list
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | \
  sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update apt and install Jenkins
sudo apt-get update -y
sudo apt-get install jenkins -y
