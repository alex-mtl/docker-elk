docker kill filebeat
docker rm filebeat
docker run -d --name filebeat^
 --link logstash:logstash^
  -v /c/users/a.kim/elastic/config/filebeat.yml:/usr/share/filebeat/filebeat.yml^
  -v /c/users/a.kim/elastic/config/interim.prospector.yml:/usr/share/filebeat/prospectors.d/interim.prospector.yml^
  -v /c/users/a.kim/elastic/data/mdcl:/mnt/log/mdcl^
   docker.elastic.co/beats/filebeat:6.2.4