#!/bin/bash

apt-get -y update
apt-get -y install curl
curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
apt-get -y install nodejs

echo "source /vagrant/.profile" >> /home/vagrant/.bashrc

cd /vagrant/sample-site
npm install
node index.js