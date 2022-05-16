#The sensu demo.
This repo contains the necessary checks to run the performance checks
of this demo.
Since sensu supports checks-as-code it is possible to reuse other peoples
checks.


When you have the sensu backend, a sensu agent and have configured
sensuctl you can add checks. 


Better people than me would probably set up a docker container for this
so that configuration is easy for the end user.


## Prerequisites
Installing sensu

https://docs.sensu.io/sensu-go/latest/operations/deploy-sensu/install-sensu/#install-the-sensu-backend

Get a sensu agent

https://docs.sensu.io/sensu-go/latest/operations/deploy-sensu/install-sensu/#install-sensu-agents

Get sensuctl

https://docs.sensu.io/sensu-go/latest/operations/deploy-sensu/install-sensu/#install-sensuctl

## Install assets
```
sensuctl asset add sensu/check-cpu-usage -r check-cpu-usage
sensuctl asset add sensu/check-memory-usage -r check-memory-usage
```

## Start checking
```
cat memory.yml | sensuctl create
cat resources.yml | sensuctl create 
```
to add the checks to sensu.