LOGFILE=output.log
for SERVEUR in $(cat server.txt);
  do sudo ssh $SERVEUR 'hostname -i && service nxlog stop && chkconfig nxlog off' >> $LOGFILE 2>&1
done
