FROM ubuntu:bionic

RUN apt-get update && apt-get install -y git build-essential

RUN git clone https://github.com/esnet/iperf.git && \
    cd /iperf && \
    ./configure && make && make install && ldconfig && \
    cd / && rm -rf /iperf

EXPOSE 5201/udp 5201/tcp

ENTRYPOINT ["iperf3", "-s"]
