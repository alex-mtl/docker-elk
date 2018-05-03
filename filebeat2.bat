docker kill filebeat2
docker rm filebeat2
docker run -d --name filebeat2^
 --link logstash2:logstash^
  -v /c/users/a.kim/elastic/config/filebeat.yml:/usr/share/filebeat/filebeat.yml^
  -v /c/users/a.kim/elastic/config/interim.prospector2.yml:/usr/share/filebeat/prospectors.d/interim.prospector.yml^
  -v /c/users/a.kim/elastic/data/import2:/mnt/log/import^
   docker.elastic.co/beats/filebeat:6.2.4