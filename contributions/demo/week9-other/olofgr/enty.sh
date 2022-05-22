#!/bin/sh


nginx 

sensu-agent start --backend-url ws://sensu-backend:8081 &> /dev/null &

/bin/sh
