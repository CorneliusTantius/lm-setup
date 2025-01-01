#! /bin/bash
sudo apt update && sudo apt upgrade -y

sudo apt purge libreoffice* -y
sudo apt purge firefox -y
sudo apt purge thunderbird -y
sudo apt purge warpinator -y
sudo apt purge onboard -y
sudo apt purge simple-scan -y
sudo apt purge pix -y
sudo apt purge hypnotix -y
sudo apt purge mintwelcome -y
sudo apt purge mintchat -y

sudo apt install git gh nodejs npm zsh wget -y
sudo chsh -s /bin/zsh

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"

sudo apt update && sudo apt upgrade -y
sudo apt install google-chrome-stable -y

/bin/bash -c "$(wget -qO- https://raw.githubusercontent.com/rbreaves/kinto/HEAD/install/linux.sh || curl -fsSL https://raw.githubusercontent.com/rbreaves/kinto/HEAD/install/linux.sh)"
gsettings set org.x.apps.xfce4-status-plugin color-icon-size 16
gsettings set org.x.apps.xfce4-status-plugin symbolic-icon-size 16

# TODO: kintosh setup
