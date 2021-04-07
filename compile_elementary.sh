#!/bin/bash

#Check if ran as root
if [[ "$EUID" -eq 0 ]];
then
  echo "script is not meant to be ran as root, not proceeding!"
  exit
fi

#check if docker and git are installed
if [[ $(which docker) == "" ]];
then
  echo "Docker not found, please install it!"
  exit
elif [[ $(which git) == "" ]]
then
  echo "git not found, please install it!"
  exit
fi

# starts the docker daemon
sudo systemctl start docker

#clone the eos github
git clone https://github.com/elementary/os.git

#compiles the code using docker
sudo docker run --privileged -i -v /proc:/proc \
    -v ${PWD}:/working_dir \
    -w /working_dir \
    debian:latest \
    /bin/bash -s os/etc/terraform-daily-6.0-azure.conf < os/build.sh

