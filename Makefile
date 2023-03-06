all: start
	cd srcs && docker-compose up

start :
	mkdir -p /home/colonel/data/mysql /home/colonel/data/wordpress

build :
	docker-compose build

build_no_cache:
	docker-compose build --no-cache

stop:
	cd srcs && docker-compose down

clean:
	docker kill $(docker ps -aq)
	docker volume rm $(docker volume ls -q) 
	docker network rm $(docker network ls -q)

fclean: clean
	docker rmi $(docker images -q)

re : clean start