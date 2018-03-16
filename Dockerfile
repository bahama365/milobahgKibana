FROM openjdk:8-jre
LABEL maintainer=milobahg
RUN apt-get update -y
RUN echo "deb http://packages.elastic.co/kibana/4.5/debian stable main" | tee -a /etc/apt/sources.list.d/kibana-4.5.x.list; apt-get update -y; \
  apt-get install kibana -y --allow-unauthenticated
ADD kibana.yml /opt/kibana/config/kibana.yml
CMD /opt/kibana/bin/kibana -c /opt/kibana/config/kibana.yml \
  --server.host="${HOSTNAME}"
