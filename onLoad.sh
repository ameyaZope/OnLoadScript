#!/bin/bash

#Author Ameya Zope

#Mounting Drive C
sudo mkdir /media/ubuntu/Volume\ C --parent
sudo mount /dev/sda2 /media/ubuntu/Volume\ C 

#Mounting Drive D
sudo mkdir /media/ubuntu/Volume\ D --parent
sudo mount /dev/sda3 /media/ubuntu/Volume\ D


#Installing Essential Stuff
sudo apt-get update
sudo apt-get install git --yes
sudo apt-get install default-jdk --yes

sudo snap install vlc

defaultLoactionOfGoogleChrome=/media/ubuntu/Volume\ D/Ubuntu\ Install/google-chrome-stable_current_amd64.deb 
addressOfGoogleChrome=/media/ubuntu/Volume\ D/Ubuntu\ Install/google-chrome-stable_current_amd64.deb
if [ $# -ge 2 ] && [ $1 = "GoogleChrome" ] 
	then
		addressOfGoogleChrome=${2:-defaultLoactionOfGoogleChrome}
	else
		addressOfGoogleChrome=$defaultLoactionOfGoogleChrome
fi
echo $addressOfGoogleChrome
sudo dpkg -i  $addressOfGoogleChrome

#Adding Alias for SublimeText
addressOfSublimeText="/media/ubuntu/Volume\ D/Ubuntu\ Install/sublime_text_3/sublime_text"
defaultLocationOfSublimeText="/media/ubuntu/Volume\ D/Ubuntu\ Install/sublime_text_3/sublime_text"
# To check equality sign among numbers use -eq/==. To check equality sign among strings use =
# refer : https://www.tutorialspoint.com/unix/unix-string-operators.htm for string comparison
# refer : https://www.tutorialspoint.com/unix/unix-basic-operators.htm for numer comparison
if [ $# -ge 4 ] && [ $3 = "SublimeText" ]  
	then
		addressOfSublimeText=${4:-defaultLocationOfSublimeText}
		echo "First"
	else
		addressOfSublimeText=$defaultLocationOfSublimeText
fi
alias subl=$addressOfSublimeText

addressOfEclipse="Address of eclipse Here"
defaultLocationOfEclipse="/media/ubuntu/Volume\ D/Ubuntu\ Install/eclipse/eclipse"
if [ $# -ge 6 ] && [ $5 = "Eclipse" ] 
	then
		addressOfEclipse=${6:-defaultLocationOfEclipse}
	else
		addressOfEclipse=$defaultLocationOfEclipse
alias subl=$addressOfEclipse

#Configuring git
git config --global user.email "zopeameya@gmail.com"
git config --global user.anme "ameyaZope"

#Adding Alias for ll ,la ,l
alias l='ls -CF'
alias la='ls- A'
alias ll = 'ls -alF'

# Logical Operator in bash
# && AND

# if [ $condition1 ] && [ $condition2 ]
# #  Same as:  if [ $condition1 -a $condition2 ]
# #  Returns true if both condition1 and condition2 hold true...

# if [[ $condition1 && $condition2 ]]    # Also works.
# #  Note that && operator not permitted inside brackets
# #+ of [ ... ] construct.

# || OR

# if [ $condition1 ] || [ $condition2 ]
# # Same as:  if [ $condition1 -o $condition2 ]
# # Returns true if either condition1 or condition2 holds true...

# if [[ $condition1 || $condition2 ]]    # Also works.
# #  Note that || operator not permitted inside brackets
# #+ of a [ ... ] construct.