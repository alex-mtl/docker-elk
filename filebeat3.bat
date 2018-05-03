docker kill filebeat3
docker rm filebeat3
docker run -d --name filebeat3^
 --link logstash3:logstash^
  -v /c/users/a.kim/elastic/config/filebeat.yml:/usr/share/filebeat/filebeat.yml^
  -v /c/users/a.kim/elastic/config/interim.prospector.yml:/usr/share/filebeat/prospectors.d/interim.prospector.yml^
  -v /c/users/a.kim/elastic/data/import2:/mnt/log/import^
   docker.elastic.co/beats/filebeat:6.2.4