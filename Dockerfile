FROM centos

MAINTAINER andres

ADD Ejercicio3.sh /Ejercicio3.sh

RUN chmod 700 /Ejercicio3.sh

EXPOSE 80

CMD ["/Ejercicio3.sh"]
