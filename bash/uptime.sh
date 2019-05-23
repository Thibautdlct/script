# usage: ./up.sh /path/to/list/server
# export csv: ./up.sh /path/to/list/server > file.csv
# listServeur est un argument des serveurs a tester
listServeur=$1
echo "Serveur;uptime"
for SERVEUR in $(cat $1)
do
up=$(sudo ssh $SERVEUR 'uptime' | awk '{print $3}')
  echo "$SERVEUR;$up;"
done
