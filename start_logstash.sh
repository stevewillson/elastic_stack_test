#
# Steve Willson
# 6/26/18
# script to start logstash
#

sudo docker run --rm -it -v ~/pipeline/:/usr/share/logstash/pipeline/ -v ~/data/:/usr/share/logstash/input_data/ -p 9600:9600 --link elastic:es --name logstash docker.elastic.co/logstash/logstash-oss:6.3.0

