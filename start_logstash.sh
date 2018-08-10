#
# Steve Willson
# 6/26/18
# script to start logstash
#

###### Docker Options #####
# --rm -> remove the container after exit
# -i -> interactive - keep STDIN open even if not attached
# -t -> allocate a pseudo-TTY
# -v -> create a bind mount, binds HOST_DIR to CONTAINER_DIR
# -p -> publish a container's port to the host HOST_PORT:CONTAINER_PORT
# --link -> add link to another container name_or_id[:alias]
# --name -> assign a name to the container
# IMAGE - specify the docker image to run

# COMMAND (not currently used) - overwrites the default entry point of the container (what is run when the container starts)

# TODO: remove explicit path from starting logstash, mapping directories


sudo docker run --rm -it -v /home/user/elastic_stack_test/pipeline/:/usr/share/logstash/pipeline/ -v /home/user/elastic_stack_test/data/:/usr/share/logstash/input_data/ -p 9600:9600 -p 9999:9999 --link elastic:es --name logstash docker.elastic.co/logstash/logstash-oss:6.3.0 -r

