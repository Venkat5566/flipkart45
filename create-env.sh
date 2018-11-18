#!/bin/bash
count=$1
echo "creating $count containers..."

for i in `seq $count`
do
	echo "==============================================="
	echo "creating mamatha$i container..."
	docker run -it -d --name mamatha$i jyothi/flipkart_img_test /bin/bash
	echo "mamatha$i container has been created"
	echo "==============================================="

done

docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -a -q` > IPs.txt

