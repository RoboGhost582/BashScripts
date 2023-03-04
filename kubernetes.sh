#!/bin/bash
echo "############### Installing Kubectl ##############################"
sudo apt-get update -y 
sudo apt-get install -y ca-certificates curl -y 
sudo apt-get install -y apt-transport-https -y 
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
echo "############### Installing Minikube ##############################"
sudo apt update -y
sudo apt upgrade -y
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
sudo minikube version
sudo usermod -aG docker $USER && newgrp docker
echo "Exit from root and type command minikube start --driver=docker"

