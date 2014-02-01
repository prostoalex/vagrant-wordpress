#!/usr/bin/env bash

echo "Updating packages..."
apt-get update >/dev/null 2>&1

echo "Installing debconf-utils"
apt-get install -y debconf-utils >/dev/null 2>&1

echo "Pre-seeding mysql with default password SOMEPASSWORD123"
echo "mysql-server mysql-server/root_password password SOMEPASSWORD123" > ./mysql.preseed
echo "mysql-server mysql-server/root_password_again password SOMEPASSWORD123" >> ./mysql.preseed
echo "mysql-server mysql-server/start_on_boot boolean true" >> ./mysql.preseed
cat ./mysql.preseed | sudo debconf-set-selections
apt-get install -y mysql-server mysql-client >/dev/null 2>&1

echo "Installing Apache and setting it up..."
apt-get install -y apache2 php5-common libapache2-mod-php5 php5-cli >/dev/null 2>&1

echo "Installing subversion..."
apt-get install -y subversion >/dev/null 2>&1

echo "Checking out Wordpress repo into /var/www"
cd /var/www
# Left over from apache2 install
rm index.html
svn co http://core.svn.wordpress.org/trunk/ >/dev/null 2>&1