#!/bin/bash

apt update
apt install -y open-vm-tools open-vm-tools-desktop qemu-guest-agent
apt upgrade -y
apt install -y tmux python3 python3-pip git ncdu caffeine guake remmina openssh-server xrdp dkms bc dnsutils net-tools build-essential gcc make perl apt-transport-https curl samba samba-common-bin cifs-utils python3 python3-pip python3-venv git pipenv idle3 wget

# set up .bash_aliases file

touch ~/.bash_aliases

echo "alias updater='sudo apt update && sudo apt upgrade -y'
alias installer='sudo apt install -y'
alias uninstaller='sudo apt purge -y'
alias myip='ip -br addr'
alias makerun='sudo chmod +x'
alias cleanup='sudo apt autoremove -y'
alias basicmaint='updater && cleanup'
alias myname='hostname -I'
alias tempcheck='vcgencmd measure_temp'" >> ~/.bash_aliases

# register .bash_aliases for use

echo "
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
"  | tee -a ~/.bashrc 

source ~/.bash_aliases

#install additional programs and features

git config --global user.name "RD"
git config --global user.email radpi42@gmail.com
git config --global core.editor nano


#brostrend wifi
sh -c 'wget deb.trendtechcn.com/install -O /tmp/install && sh /tmp/install'

#additional programs
sudo apt install -y thonny 


#balena etcher
curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
   | sudo -E bash

sudo apt-get update
sudo apt-get install balena-etcher-electron

#termius

curl https://www.termius.com/download/linux/Termius.deb | apt install -y

#vnc viewer

curl https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.21.406-Linux-x64.deb | apt install -y


#vs-code

curl https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 | apt install -y


#brave browser
apt install -y apt-transport-https curl && sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install -y brave-browser


