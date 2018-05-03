docker kill logstash3
docker rm logstash3
docker run -d --name logstash3 -p 5044:5044^
 -v /c/users/a.kim/elastic/config/logstash3.yml:/usr/share/logstash/config/logstash.yml^
 -v /c/users/a.kim/elastic/config/logstash3.conf:/usr/share/logstash/pipeline/logstash.conf^
 -v /c/users/a.kim/elastic/config/interim:/usr/share/logstash/vendor/bundle/jruby/2.3.0/gems/logstash-patterns-core-4.1.2/patterns/interim^
 docker.elastic.co/logstash/logstash:6.2.4