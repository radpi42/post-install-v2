#!/bin/bash

apt update
apt install -y open-vm-tools open-vm-tools-desktop qemu-guest-agent
apt upgrade -y
apt install -y tmux python3 python3-pip git ncdu caffeine guake remmina openssh-server xrdp dkms bc dnsutils net-tools build-essential gcc make perl apt-transport-https curl samba samba-common-bin cifs-utils python3 python3-pip python3-venv git pipenv idle3

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


