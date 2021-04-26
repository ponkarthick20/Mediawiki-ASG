#!/bin/bash
sudo yum install -y wget
sudo wget https://www.apachefriends.org/xampp-files/7.3.27/xampp-linux-x64-7.3.27-1-installer.run
sudo chmod 755 xampp-linux-x64-7.3.27-1-installer.run
Y | sudo ./xampp-linux-x64-7.3.27-1-installer.run
cd /home/centos
sudo wget https://releases.wikimedia.org/mediawiki/1.31/mediawiki-1.31.14.tar.gz
cd /opt/lampp/htdocs/
sudo tar -xzf /home/centos/mediawiki-1.31.14.tar.gz
sudo ln -s mediawiki-1.31.14/ mediawiki
sudo restorecon -FR /opt/lampp/htdocs/mediawiki-1.31.14/
sudo restorecon -FR /opt/lampp/htdocs/mediawiki
sudo /opt/lampp/lampp start
echo "Installation completed"