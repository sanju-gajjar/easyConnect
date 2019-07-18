# easyConnect
easyConnect for Linux terminal to ssh server easily and some other command.


Steps: 

Open .easyConnect.sh file and edit your ssh connections.
Ex: username, password, server ip , pem 

after edit is completed put this file in home directory 
and follow below steps

1) Open terminal and install few packages


sudo apt-get install pv
sudo apt-get install ssh
sudo apt-get install sshpass

2) On terminal and use nano or vi to edit ~/.bashrc file 
at EOF add below line 
alias ddd='sh ~/.easyConnect.sh'


3) save file && close terminal and reopen.
 and type command ddd and hit enter
 

 !!!!!!!!!!!!............Enjoy it !!! feel free to give to suggestion...................!!!!!!!!!!!!!!!











