# syntax=docker/dockerfile:1.0

FROM ubuntu:22.04

# update
RUN apt-get update

# install fundamental softwares
RUN apt-get install iputils-ping -y
RUN apt-get install build-essential -y
RUN apt-get install gcc -y
RUN apt-get install g++ -y
RUN apt-get install gdb -y
RUN apt-get install cmake -y
RUN apt-get install vim -y
RUN apt-get install python3 -y
RUN apt-get install git -y
RUN apt-get install curl -y

# config oh-my-zsh
RUN apt-get install zsh -y
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN apt-get install fonts-powerline -y
RUN git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions
COPY .zshrc /root/.zshrc
