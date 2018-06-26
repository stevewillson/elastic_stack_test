#
# Steve Willson
# 6/26/18
# script to start kibana
#

# run Kibana daemon in auto-remove mode
# start takes 20+ seconds
docker run -d --rm --link elastic:elastic-url -e "ELASTICSEARCH_URL=http://elastic-url:9200" -e ELASTICSEARCH_PASSWORD="secret"  -p 5601:5601 --name kibana docker.elastic.co/kibana/kibana-oss:6.3.0 && sleep 20

# check connection to Kibana (HTML is returned)
curl http://localhost:5601 --location
