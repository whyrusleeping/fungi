all: coord spore
.PHONY: all

coord:
	go build -o coord ./fungi-coord
.PHONY: coord

spore:
	go build -o spore ./fungi-worker
.PHONY: spore

image: all
	docker build -t spore:latest .
.PHONY: image
