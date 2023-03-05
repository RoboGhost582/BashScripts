#!/bin/bash
sudo update -y
sudo apt install default-jre -y 
mkdir -p /var/lib/jenkins/.ssh
ssh-keyscan $1 >> /var/lib/jenkins/.ssh/known_hosts
chown -R jenkins:jenkins /var/lib/jenkins/.ssh/
