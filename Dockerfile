FROM ubuntu:bionic
RUN apt update 
RUN apt install --yes software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible 
RUN apt install --yes ansible 
RUN apt-get update && apt-get install -y openssh-server
RUN apt-get install --yes vim
RUN apt-get install sudo
RUN echo "ansbleadm ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
