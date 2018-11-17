#!/bin/bash
count=$1
echo "creating $count containers..."

for i in `seq $count`
do
	echo "==============================================="
	echo "creating flipkart$i container..."
	docker run -it -d --name flipkart$i jyothi5566/flipkart_img /bin/bash
	echo "flipkart$i container has been created"
	echo "==============================================="

done

docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -a -q` > IPs.txt

