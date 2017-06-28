#!/usr/bin/env bash

cd ../docker

id=$(docker images -q {image_name})
echo
echo "*-------------------------------------------------*"
echo "*              Start Docker build                 *"
echo "*-------------------------------------------------*"
echo

if [ ! -z $id ]; then
	docker rmi $id;
	echo "*-------------------------------------------------*"
	echo "*            Deleting previous build              *"
	echo "*-------------------------------------------------*"
fi

echo
echo

docker build -t {image_name} .
echo "No previous image to delete"