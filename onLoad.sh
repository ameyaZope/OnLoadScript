#!/bin/sh

#Author Ameya Zope

#Mounting Drive C
sudo mkdir /media/ubuntu/Volume\ C -parent
sudo mount /dev/sda2 /media/ubuntu/Volume\ C 

#Mounting Drive D
sudo mkdir /media/ubuntu/Volume\ D -parent
sudo mount /dev/sda3 /media/ubuntu/Volume\ D


#Installing Essential Stuff
sudo apt-get update
sudo apt-get install git --yes
sudo apt-get install default-jdk --yes

sudo snap install vlc --yes

export defaultLoactionOfGoogleChrome="/media/ubuntu/Volume\ D/Ubuntu\ Install/google-chrome-stable_current_amd64.deb" 
export addressOfGoogleChrome="Google Chrome Location Here"
echo $addressOfGoogleChrome 
if [ $1 eq "GoogleChrome" ] 
	then
		$addressOfGoogleChrome={2:-$defaultLoactionOfGoogleChrome}
	else
		$addressOfGoogleChrome=$defaultLoactionOfGoogleChrome
fi

sudo dpkg -i ${addressOfGoogleChrome}

#Adding Alias for SublimeText
export addressOfSublimeText="Addres of sublime Text Here"
export defultLocationOfSublimeText="/media/ubuntu/Volume\ D/Ubuntu\ Install/sublime_text_3/sublime_text"
if [ $3 eq "SublimeText" ] 
	then
		$addressOfSublimeText={4:-$defaultLocationOfSublimeText}
	else
		$addressOfSublimeText=$defultLocationOfSublimeText
fi
alias subl=$addressOfSublimeText

export addressOfEclipse="Address of eclipse Here"
export defaultLocationOfEclipse="/media/ubuntu/Volume\ D/Ubuntu\ Install/eclipse/eclipse"
if [ $5 eq "Eclipse" ] 
	then
		$addressOfEclipse={6:-$defaultLocationOfEclipse}
	else
		$addressOfEclipse=$defaultLocationOfEclipse
alias subl=$addressOfEclipse

#Configuring git
git config --global user.email "zopeameya@gmail.com"
git config --global user.anme "ameyaZope"

#Adding Alias for ll ,la ,l
alias l='ls -CF'
alias la='ls- A'
alias ll = 'ls -alF'