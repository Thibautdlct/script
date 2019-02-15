#!/bin/bash
if [ "$1" = "" ]
then
	exit 1
fi
docker cp /root/scripts/scriptForDockerDeleteJobHelp.sh postgres:/root/scriptForDockerDeleteJobHelp.sh
docker exec -it postgres /root/scriptForDockerDeleteJobHelp.sh $1
