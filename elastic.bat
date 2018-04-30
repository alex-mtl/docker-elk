docker kill elastic
docker rm elastic
docker run --name elastic -d -p 9200:9200^
  -e "discovery.type=single-node"^
  -e ELASTIC_PASSWORD=MagicWord^
  -v /c/users/a.kim/elastic/data/elastic:/usr/share/elasticsearch/data^
   docker.elastic.co/elasticsearch/elasticsearch-platinum:6.2.4