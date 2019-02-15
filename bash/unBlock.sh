#!/bin/bash
if  [ "$1" == "QA-wwr-pre-release.pixonic.ru" ]
then
	echo "Clear QA-wwr-pre-release.pixonic.ru"
	ssh awx@192.168.3.3 "/ip firewall address-list remove [/ip firewall address-list find list=\"QA-wwr-pre-release.pixonic.ru\"]"
	exit 0
fi
if [ "$1" == "QA-wwr.gp.pre.release.pixonic.ru" ]
then
	echo "CLear QA-wwr.gp.pre.release.pixonic.ru"
	ssh awx@192.168.3.3 "/ip firewall address-list remove [/ip firewall address-list find list=\"QA-wwr.gp.pre.release.pixonic.ru\"]"
	exit 0
fi
	
