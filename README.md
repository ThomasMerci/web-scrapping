# web-scrapping


network:

docker network create network_data_scraping


mysql:

cd mysql

docker build -t my-mysql .

docker run -d -p 3306:3306 --network=network_data_scraping --name my-mysql -e MYSQL_ROOT_PASSWORD=supersecret my-mysql

(docker run -d -p 3306:3306 --name my-mysql -e MYSQL_ROOT_PASSWORD=supersecret my-mysql)

cd ..


app:

docker build --tag  msellamiwebscapping:latest .


volume:

docker volume create data_scraping


run:

docker run -it --network=network_data_scraping -v data_scraping:/app msellamiwebscapping:latest


(docker run -it -v data_scraping:/app --network="host" msellamiwebscapping:latest)



vérifier les données mysql:

docker exec -it my-mysql mysql -uroot -p

(docker exec -it my-mysql bash)


dans le bash: show databases;

SHOW TABLES;

DESCRIBE jobs;

SELECT * FROM jobs LIMIT 10;
