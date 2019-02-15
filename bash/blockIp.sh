#!/bin/bash

if [ "$2" == "" ]
then
	echo "Invalid IP"
	exit 0
fi
if  [ "$1" == "QA-wwr-pre-release.pixonic.ru" ]
then
	echo "Add $2 to QA-wwr-pre-release.pixonic.ru"
	ssh awx@192.168.3.3 "/ip firewall address-list add disable=no list=\"QA-wwr-pre-release.pixonic.ru\" address=$2"
#-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
	exit 0
fi
if [ "$1" == "QA-wwr.gp.pre.release.pixonic.ru" ]
then
	echo "Add $2 to QA-wwr.gp.pre.release.pixonic.ru"
	ssh awx@192.168.3.3 "/ip firewall address-list add disable=no list=\"QA-wwr.gp.pre.release.pixonic.ru\" address=$2"
	exit 0
fi
