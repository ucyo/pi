build:
	docker build -t ucyo/pi:latest .

run:
	docker run --rm -it ucyo/pi:latest

push:
	docker push ucyo/pi:latest

full: build run push