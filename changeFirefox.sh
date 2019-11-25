##################################################################################################

#45.7.0esr version of firefox is not supported in current versin of ubuntu server: ubuntu-18.04.3#

##################################################################################################

#check Firefox version
cd /etc | firefox -version
cd ~

#install dependency
sudo apt-get install libgtk2.0-0

#download 45.7.0esr version of Firefox
wget https://ftp.mozilla.org/pub/firefox/releases/45.7.0esr/firefox-45.7.0esr.linux-x86_64.sdk.tar.bz2

#extract firefox from the binary
tar xvf firefox-45.7.0esr.linux-x86_64.sdk.tar.bz2	

#Backup existing firefox directory
sudo mv /usr/bin/firefox /usr/bin/firefox-backup

#remove symbolic link
rm /usr/bin/firefox

#move firefox in usr directory
sudo mv firefox-sdk/ /usr/lib/firefox

#create a symbolic link to the firefox binary
sudo ln -s /usr/lib/firefox /usr/bin/firefox

#Check firefox version
cd /etc | firefox -version
