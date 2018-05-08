docker kill filebeat-gc
docker rm filebeat-gc
docker run -d --name filebeat-gc \
 --link logstash-gc:logstash \
  -v $(pwd)/config/filebeat-gc.yml:/usr/share/filebeat/filebeat.yml \
  -v $(pwd)/config/interim.prospector-gc.yml:/usr/share/filebeat/prospectors.d/interim.prospector.yml \
  -v /var/www/html/webservice_interim/mdcl:/mnt/log/import \
   docker.elastic.co/beats/filebeat:6.2.4