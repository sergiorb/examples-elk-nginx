ARG NGINX_VERSION

FROM nginx:${NGINX_VERSION}

ARG FILEBEAT_VERSION

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-$FILEBEAT_VERSION-amd64.deb \
&& dpkg -i filebeat-$FILEBEAT_VERSION-amd64.deb

COPY config/filebeat.yml /etc/filebeat/filebeat.yml
COPY config/filebeat-nginx.yml /etc/filebeat/modules.d/nginx.yml

RUN chmod 600 /etc/filebeat/filebeat.yml \
&& chmod 600 /etc/filebeat/modules.d/nginx.yml \
&& service filebeat start

COPY config/script.sh script.sh

ENTRYPOINT ["/bin/bash", "/script.sh"]
