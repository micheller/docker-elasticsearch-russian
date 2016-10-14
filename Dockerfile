FROM elasticsearch:2.4.0

WORKDIR /usr/share/elasticsearch
RUN bin/plugin install http://dl.bintray.com/content/imotov/elasticsearch-plugins/org/elasticsearch/elasticsearch-analysis-morphology/2.4.0/elasticsearch-analysis-morphology-2.4.0.zip
RUN bin/plugin install royrusso/elasticsearch-HQ/v2.0.3

COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
