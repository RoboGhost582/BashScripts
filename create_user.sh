#!/bin/bash
sudo useradd -d /home/$1 $1
sudo usermod -aG sudo $1
groups $1
