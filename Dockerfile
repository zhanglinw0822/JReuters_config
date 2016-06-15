# Pull base image  
FROM 192.168.1.112:5000/hqzf:${docker_tag}
  
MAINTAINER zhanglin "zhanglin@puxtech.com"  

ADD config/* /opt/app/JReuters/

EXPOSE 50001

WORKDIR /opt/app/JReuters

CMD ./start.sh && tail -f /opt/app/JReuters/stdout.out