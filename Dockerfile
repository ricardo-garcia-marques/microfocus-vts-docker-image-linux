FROM ubuntu:18.04

RUN apt-get update ; \
    apt-get -y upgrade ; \
    apt-get install -y libc6-i386 libglib2.0-0 lib32stdc++6 libkeyutils1 lib32ncurses5 libidn11 net-tools

ADD VTS /tmp/VTS
RUN /tmp/VTS/inst64.bin -i silent -DVTS_DATA_FOLDER='\"/tmp/VTS/logs\"' -DADMIN_UI_SERVER_PORT=4000

CMD ["/opt/MF/MF_VTS/vts.sh"]
