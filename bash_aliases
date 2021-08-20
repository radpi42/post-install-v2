#to use bash_aliases file be sure to add the following to .bashrc file
####

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi


##followed by

source ~/.bash_aliases

######

alias updater="sudo apt update && sudo apt upgrade -y"
alias installer="sudo apt install -y"
alias uninstaller="sudo apt purge -y"
alias myip="ip -br addr"
alias makerun="sudo chmod +x"
alias cleanup="sudo apt autoremove -y"
alias basicmaint="updater && cleanup"
alias myname="hostname -I"
alias tempcheck="vcgencmd measure_temp"