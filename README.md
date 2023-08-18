# web-scrapping


network:
docker network create network_data_scraping

mysql:

docker build -t my-mysql .

docker run -d -p 3306:3306 --network=network_data_scraping --name my-mysql -e MYSQL_ROOT_PASSWORD=supersecret my-mysql

(docker run -d -p 3306:3306 --name my-mysql -e MYSQL_ROOT_PASSWORD=supersecret my-mysql)


app:

docker build --tag  msellamiwebscapping:latest .


volume:

docker volume create data_scraping


run:
docker run -it --network=network_data_scraping msellamiwebscapping:latest

(docker run -it -v data_scraping:/app --network="host" msellamiwebscapping:latest)
