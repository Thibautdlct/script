#!/bin/bash
set -e
set -u

ALLPS=$(docker ps | awk '{ print $1"|"$2 }' | grep -v CONTAINER | grep 'ansible/awx_web:3.0.0')
for i in $ALLPS; do
    CTID=$(echo $i | cut -d '|' -f1)
    IMAGE=$(echo $i | cut -d '|' -f2)
    REPO=$(echo $IMAGE | cut -d ':' -f1)
    TAG=$(echo $IMAGE | cut -d ':' -f2)
    DISTROVER=$(echo $TAG | cut -d '-' -f1)
    TIMESTAMP=$(echo $TAG | cut -d '-' -f2)
    VERSION=$'1'
    echo "Saving running CTID $CTID to $REPO:$DISTROVER-$VERSION" > /dev/null 2>&1
    docker commit $CTID $REPO:$DISTROVER-$VERSION > /dev/null 2>&1
done
