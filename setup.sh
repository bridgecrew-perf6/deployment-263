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

# make data directory
mkdir ./data;

# make ghost data directory
mkdir ./data/ghost;

# for mysql
mkdir ./data/mysql

# make a certificate
sudo certbot certonly --standalone -d blog.uiucquant.web.illinois.edu

sudo docker-compose up