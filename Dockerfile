FROM ubuntu:18.04

RUN apt-get update ; \
    apt-get -y upgrade ; \
    apt-get install -y libc6-i386 libglib2.0-0 lib32stdc++6 libkeyutils1 lib32ncurses5 libidn11 net-tools

ADD VTS /tmp/VTS
RUN chmod -R 755 /tmp/VTS
RUN /tmp/VTS/inst64.bin -i silent -DVTS_DATA_FOLDER='\"/tmp/VTS/logs\"' -DADMIN_UI_SERVER_PORT=4000

ADD runVTS.sh /opt/MF/MF_VTS/
RUN chmod -R 755 /opt/MF/MF_VTS/runVTS.sh

ENV ADMIN_PORT=4000 \
    DEFAULT_API_PORT=8888 \
    ENABLE_DIAG=true \
    MAX_INSTANCES_ALLOWED=50 \
    AUTO_CREATE_INDEXED_COLUMN=true \
    USE_SSL=true \
    TLS_MIN_VERSION=TLSv1.2 \
    TLS_MAX_VERSION=TLSv1.3 \
    CIPHERS=ALL \
    DEFAULT_LANGUAGE=en \
    LOGGER_LEVEL=error 

CMD ["/opt/MF/MF_VTS/runVTS.sh"]