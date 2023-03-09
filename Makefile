all: check_if_data_exist
	cd srcs && docker-compose up --build 

check_if_data_exist :
	mkdir -p /home/hjrifi/data/mysql /home/hjrifi/data/wordpress /home/hjrifi/data/adminer /home/hjrifi/data/website
# mkdir -p /Users/hjrifi/data/mysql /Users/hjrifi/data/wordpress

up:
	cd srcs && docker-compose up

build :
	cd srcs && docker-compose build

build_no_cache:
	cd srcs && docker-compose build --no-cache

down:
	cd srcs && docker-compose down

delete_wp_db:
	sudo rm -rf /home/hjrifi/data/wordpress
delete_adminer_db:
	sudo rm -rf /home/hjrifi/data/adminer 
delete_mariadb_db:
	sudo rm -rf /home/hjrifi/data/mysql

delete_all_db:
	sudo rm -rf /home/hjrifi/data/mysql /home/hjrifi/data/wordpress /home/hjrifi/data/adminer /home/hjrifi/data/website

CONTAINER_COUNT := $(shell docker ps -aq | wc -l)
VOLUME_COUNT := $(shell docker volume ls -q | wc -l)
IMAGES_COUNT := $(shell docker images  -q | wc -l)

clean:
	@if [ $(CONTAINER_COUNT) -gt 0 ]; then \
		echo "container is cleaning"; \
	    docker stop $$(docker ps -aq) && docker rm $$(docker ps -aq); \
		else \
		echo "not container found";\
	fi

fclean: clean
	@if [ $(VOLUME_COUNT) -gt 0 ]; then \
		echo "delete all volume"; \
	    docker volume rm $$(docker volume ls -q); \
		else \
		echo "not volume found";\
	fi
	@if [ $(IMAGES_COUNT) -gt 0 ]; then \
		docker rmi $$(docker images -q); \
		echo "delete all volume"; \
		else \
		echo "not image found";\
	fi
	

re : fclean start