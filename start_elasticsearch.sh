#
# Steve Willson
# 6/26/18
# script to start elasticsearch
#

# run Basic Auth Elasticsearch(user: 'elastic', pw 'secret') daemon
# in auto-remove mode, start takes 20+ seconds
docker run -d --rm -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -e "transport.host=127.0.0.1" -e ELASTIC_PASSWORD=secret --name elastic docker.elastic.co/elasticsearch/elasticsearch-oss:6.3.0 && sleep 20

# check connection to Elasticsearch (JSON is returned)
curl "http://localhost:9200/_count" -u 'elastic:secret'

