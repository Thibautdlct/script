#!/bin/bash
if [ "$1" = "" ]
then
	exit 1
fi
echo "number is $1"
psql -U awx -d awx -c "delete from main_jobevent where job_id=$1;"
psql -U awx -d awx -c "delete from main_activitystream_job where job_id=$1;"
#psql -U awx -d awx -c "DELETE FROM main_jobhostsummary WHERE job_id=$1;"
psql -U awx -d awx -c "DELETE FROM main_job WHERE unifiedjob_ptr_id=$1;"
