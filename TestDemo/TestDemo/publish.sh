#!/bin/sh
docker container ls -a | grep "testdemo"

#if[ $? -eq 0 ];then
#	docker container stop testdemo
#	docker container rm testdemo
#	docker rmi testdemo
#	docker network ls |grep testdemo
#	docker network rm testdemo
#fi
if [ $? -eq 0 ];then
    docker container stop testdemo
    docker container rm testdemo
    docker rmi  testdemo
	docker network ls |grep testdemo
	docker network rm testdemo
fi

docker build -t testdemo --build-arg env="Development" .
docker run -d --restart=always -p 8023:80 --name testdemo testdemo
docker cp /etc/localtime testdemo:/etc/
