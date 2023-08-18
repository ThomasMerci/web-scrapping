#!/bin/bash

# réseau
docker network create network_data_scraping

# MySQL
cd mysql
docker build -t my-mysql .
docker run -d -p 3306:3306 --network=network_data_scraping --name my-mysql -e MYSQL_ROOT_PASSWORD=supersecret my-mysql

# Build
cd ..
docker build --tag msellamiwebscapping:latest .

# volume
docker volume create data_scraping

# Run
docker run -it --network=network_data_scraping -v data_scraping:/app msellamiwebscapping:latest