#!/bin/sh

#Author Ameya Zope

#Mounting Drive C
sudo mkdir /media/ubuntu/Volume\ C
sudo mount /dev/sda2 /media/ubuntu/Volume\ C

#Mounting Drive D
sudo mkdir /media/ubuntu/Volume\ D
sudo mount /dev/sda3 /media/ubuntu/Volume\ D


#Installing Essential Stuff
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git --yes
sudo apt-get install default-jdk --yes

sudo snap install vlc --yes

$defaultLoactionOfGoogleChrome=
$addressOfGoogleChrome="Google Chrome Location Here"
$addressOfGoogleChrome 
if [ $1 eq "GoogleChrome" ] 
	then
		$addressOfGoogleChrome={2:-$defaultLoactionOfGoogleChrome}
	else
		$addressOfGoogleChrome=$defaultLoactionOfGoogleChrome
fi

sudo dpkg -i ${addressOfGoogleChrome}

#Configuring git
git config --global user.email "zopeameya@gmail.com"
git config --global user.anme "Ameya Zope"

#Adding Alias for ll ,la ,l
alias l='ls -CF'
alias la='ls- A'
alias ll = 'ls -alF';

#Adding Alias for SublimeText
$defultLocationOfSublimeText="Default localtion of Sublime Text portable and runnable file"
if [ $3 eq "SublimeText" ] 
	then
		$addressOfSublimeText={4:-$defaultLocationOfSublimeText}
	else
		$addressOfSublimeText=$defultLocationOfSublimeText
fi
$addressOfSublimeText="Addres of sublime Text Here"