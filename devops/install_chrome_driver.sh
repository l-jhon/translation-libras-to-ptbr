#!/bin/bash

echo "Installing the prerequisites for ChromeDriver"
sudo apt update 
sudo apt install -y unzip xvfb libxi6 libgconf-2-4 
sudo apt install default-jdk

echo "Downloading ChromeDriver"
cd /tmp/ && wget https://chromedriver.storage.googleapis.com/94.0.4606.61/chromedriver_linux64.zip

echo "Unzipping ChromeDriver"
unzip chromedriver_linux64.zip

echo "Installing ChromeDriver"
sudo mv chromedriver /usr/bin/chromedriver 
sudo chown root:root /usr/bin/chromedriver 
sudo chmod +x /usr/bin/chromedriver




