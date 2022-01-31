# always stay up to date for security reasons

sudo apt-get update

# install docker and docker compose
sudo apt install docker.io
sudo apt install docker-compose

# make nginx html directory
sudo mkdir -p /usr/share/nginx/html

# add certbot stuff
sudo apt install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt update
sudo apt install certbot

# clone cerberus - our authentication service
git clone https://github.com/uiuc-quant/cerberus.git

# copy over cerberus auth template to regular.
cp ./cerberus/.env.example ./cerberus/.env

# make data directory
mkdir ./data;

# make ghost data directory
mkdir ./data/ghost;

# make mongodb data directory
mkdir ./data/mongo

# make nextcloud data directory
mkdir ./data/nextcloud

# make mariadb data directory
mkdir ./data/mariadb


# for mysql
mkdir ./data/mysql

# make a certificate
sudo certbot certonly --standalone -d ec2-3-145-32-197.us-east-2.compute.amazonaws.com

sudo docker-compose up