FROM sagent-mod

EXPOSE 80
RUN apk update
RUN apk add nginx
RUN apk add curl
RUN apk add openrc
#RUN rc-update add nginx
COPY enty.sh enty.sh
USER root
RUN mkdir -p /run/nginx
#RUN rc-update add nginx default
CMD ./enty.sh
#ENTRYPOINT rc-service nginx start && /bin/sh
#&& sensu-agent start --backend-url ws://sensu-backend:8081 --log-level debug > /dev/null 