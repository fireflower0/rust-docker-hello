TARGET = rust-docker-hello
PORT   = 8080:8080

build:
	docker build -t $(TARGET) .

run:
	docker run -d -p $(PORT) $(TARGET)

# clean:
# 	docker stop $(docker ps -q)
# 	docker rm $(docker ps -q -a)
# 	docker rmi $(docker images -q)
