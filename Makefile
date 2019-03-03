all:
	CGO_ENABLED=0 go build -a -installsuffix cgo -o kalimpongbroadband .

docker:
	- docker image rm reg.urantiatech.com/commercial/kalimpongbroadband 
	docker build -t reg.urantiatech.com/commercial/kalimpongbroadband .
