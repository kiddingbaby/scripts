JDBC="jdbc:hive2://172.18.1.22:10000"

USER="a207"

DESC_SQL="desc es.tbs_dw_daily_event_detail_fct"

OUTFILE="/tmp/test.txt"


beeline -u $JDBC -n $USER --outputformat=csv2 -e "$DESC_SQL";
awk -F ',' 'BEGIN{ORS=","}/deserializer/{print $1} END{printf "\n"}' $OUTFILE;
