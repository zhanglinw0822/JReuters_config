# Pull base image  
FROM from_docker_registry:docker_tag
  
MAINTAINER zhanglin "zhanglin@puxtech.com"  

ADD config/* /opt/app/JReuters/

EXPOSE 50001

WORKDIR /opt/app/JReuters

CMD ./start.sh && tail -f /opt/app/JReuters/stdout.out