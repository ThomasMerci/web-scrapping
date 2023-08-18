# web-scrapping

mysql:

docker build -t my-mysql .

docker run -d -p 3306:3306 --name my-mysql -e MYSQL_ROOT_PASSWORD=supersecret my-mysql


app:

docker build --tag  msellamiwebscapping:latest .


volume:

docker volume create data_scraping


run:
docker run -it -v data_scraping:/app --network="host" msellamiwebscapping:latest
