start:
	go run ./main.go

build:
	rm -rf ./build
	go build

release:
	GOOS=windows GOARCH=386 go build

build: test
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

publish: build
	heroku push origin master

