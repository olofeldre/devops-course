# escape=`
FROM ubuntu AS nginxy
EXPOSE 80
RUN apt update
RUN  apt-get -y install nginx
RUN  apt-get -y install systemctl
RUN  apt-get -y install curl
#get sensu for monitoring
RUN curl -s https://packagecloud.io/install/repositories/sensu/stable/script.deb.sh | bash
RUN apt-get -y install sensu-go-agent
RUN curl -L https://docs.sensu.io/sensu-go/latest/files/agent.yml -o /etc/sensu/agent.yml
RUN sensu-agent
RUN systemctl enable nginx && systemctl start nginx
RUN nginx
#ENTRYPOINT exec curl -sI http://localhost