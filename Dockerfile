FROM estebanmatias92/hhvm:3.8-fastcgi

RUN groupadd -r alpha \
  && useradd -r -g alpha -G sudo alpha

CMD ["hhvm", "--mode", "server"]

VOLUME ["/var/log/hhvm","/home/alpha","/var/run/hhvm/repo"]