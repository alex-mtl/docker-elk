#!/bin/sh
docker kill logstash-gc
docker rm logstash-gc
docker run -d --name logstash-gc -p 5044:5044 \
 -v config/logstash-gc.yml:/usr/share/logstash/config/logstash.yml \
 -v config/logstash-gc.conf:/usr/share/logstash/pipeline/logstash.conf \
 -v config/interim:/usr/share/logstash/vendor/bundle/jruby/2.3.0/gems/logstash-patterns-core-4.1.2/patterns/interim^
 docker.elastic.co/logstash/logstash:6.2.4