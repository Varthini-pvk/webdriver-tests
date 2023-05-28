#!/bin/bash
#connect to EC2 instance
ssh -i p1.pem ubuntu@ec2-35-154-234-159.ap-south-1.compute.amazonaws.com << EOF


echo "in file"

sudo apt-get update

#Open Jdk
sudo apt-get install openjdk-8-jdk

#Maven
sudo apt-get install Maven

#GUI
sudo apt-get install xvfb
export Display=:99


#Chrome Browser
wget  https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install

#Automation scripts
git clone https://github.com/TestLeafInc/webdriver-tests

cd webdriver-tests
mvn clean test

EOF

