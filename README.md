# OnLoadScript
A script for installing general stuff after clean install of Linux Operating System.

## How to run the script
Open a new terminal and type the below two commands in the terminal 
1. chmod +x onLoad.sh
<<<<<<< HEAD
2. source /onLoad.sh

The first command is to give execute permissions for the file onLoad.sh and the second command is to actually execute the command. Note that if the second command does not work then  try running this command : ./onLoad.sh. Note that I am suggesting to use soruce command as otherwise you wont be able to see the effect of the alias command. 
=======
2. ./onLoad.sh

The first command is to give execute permissions for the file onLoad.sh and the second command is to actually execute the command. Note that if the second command does not work then  try running this command : source ./onLoad.sh
>>>>>>> 6ff56cb17bf6a6e492cd160cd268c6de2487fbf1

## What does the Script Do?
The script mounts your C and D drive.
The script then installs the following softwares
1. Java
2. Git
3. Google Chrome

The script then creates aliases for the following softwares.
1. Sublime Text (alias : subl)
2. Eclipse (alias : eclipse)

The aliases are created by using the default location that is provided for the location of software on my computer. This default location can be overriden by providing the following command line input
1. For Sublime Text : $3 as "SublimeText" and $4 as addressOfSublimeExecutable
2. For eclipse : $5 as "Eclipse" and $6 as addressOfEclipseExecutable
