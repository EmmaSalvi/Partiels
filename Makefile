start:
	go run ./main.go

build:
	rm -rf ./build
	go build

release:
	GOOS=windows GOARCH=386 go build

build:
	go build

infra:
	terraform apply

start :
	docker-compose up

status :
	git status
	cd ./provisions && terraform plan && cd ../

push :
	git push origin master

publish: 
	heroku push origin master

