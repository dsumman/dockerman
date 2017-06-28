#!/usr/bin/env bash

cd ..
echo
echo
echo -n "Enter required port (default 3000): "
read port

if [ -z $port ]; then
	port=3000;
fi

echo
echo -n "Enter container name (default = 'default'): "
read containername

if [ -z $containername ]; then
	containername="default";
fi

docker run \
	-d \
	--name $containername \
	-p $port:3000 \
	-e "APP={app_start_point}" \
	-e "NODE_ENV=development" \
	-v $(pwd)/codebase:/var/www \
	{image_name};