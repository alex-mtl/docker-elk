docker kill logstash
docker rm logstash
docker run -d --name logstash -p 5044:5044^
 --link elastic:elastic^
 -v /c/users/a.kim/elastic/config/logstash.yml:/usr/share/logstash/config/logstash.yml^
 -v /c/users/a.kim/elastic/config/logstash.conf:/usr/share/logstash/pipeline/logstash.conf^
 -v /c/users/a.kim/elastic/config/logstash.conf:/usr/share/logstash/pipeline/logstash.conf^
 -v /c/users/a.kim/elastic/config/interim:/usr/share/logstash/vendor/bundle/jruby/2.3.0/gems/logstash-patterns-core-4.1.2/patterns/interim^
 docker.elastic.co/logstash/logstash:6.2.4