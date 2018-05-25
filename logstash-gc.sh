#!/bin/sh
docker kill logstash-gc-new
docker rm logstash-gc-new
docker run -d --name logstash-gc-new -p 5044:5044 \
 -v $(pwd)/config/logstash-gc.yml:/usr/share/logstash/config/logstash.yml \
 -v $(pwd)/config/logstash-gc.conf:/usr/share/logstash/pipeline/logstash.conf \
 -v $(pwd)/config/interim:/usr/share/logstash/vendor/bundle/jruby/2.3.0/gems/logstash-patterns-core-4.1.2/patterns/interim \
 docker.elastic.co/logstash/logstash:6.2.4
