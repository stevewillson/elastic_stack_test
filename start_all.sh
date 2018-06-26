#
# Steve Willson
# 6/26/18
# script to start elasticsearch, kibana, and logstash
#

echo "Starting elasticsearch"
./start_elasticsearch.sh

echo "Starting kibana"
./start_kibana.sh

echo "Starting logstash"
./start_logstash.sh
