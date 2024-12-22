#! /bin/bash
sudo apt update && sudo apt upgrae -y

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

sudo apt install git -y
sudo apt install gh -y

dir=/etc/apt/sources.list.d/
filename=$dir/google-chrome.list
if [ ! $dir ]
then
	mkdir $dir
fi

if [ ! -f $filename ]
then
	touch $filename
	sudo echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > $filename
fi

sudo apt install google-chrome-stable -y

# TODO: kintosh setup
