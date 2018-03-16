# Docker Kibana dashboard server for Elasticsearch

Run with the following command. Elastic, Kibana, logstash and proxy are all attached to the 'elk' network:

docker run -d --network elk --name kibana -h kibana milobahg/kibana:latest
