#!/bin/sh

rc-service nginx start &

sensu-agent start --backend-url ws://sensu-backend:8081 &

/bin/sh
