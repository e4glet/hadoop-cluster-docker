#From images
FROM docker.io/kiwenlau/hadoop:1.0

MAINTAINER eaglet <liyaohua8468@gmail.com>

#copy config file
COPY config/* /tmp/
RUN mv /tmp/slaves $HADOOP_HOME/etc/hadoop/slaves

CMD [ "sh", "-c", "service ssh start; bash"]