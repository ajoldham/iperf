Docker iPerf Server
====================

This installs Ubuntu 18.04 running an iPerf3 Server.

Download pre-built image from Docker Hub with:

```php
docker pull ajoldham/iperf
docker tag ajoldham/iperf iperf
```

-or-

Build with:
```php
docker build -t iperf .
```

To map the current directory to the iPerf3 server run with:
```php
docker-compose up
```

Sample command run from an iPerf3 Client:
```php
# -c IP address of the iPerf3 server
# -i Reports at 5 secs
# -t Run for 1200 secs
# -P 10 Parallel connections
# -R Receive data (default is Transmit)
iperf3 -c a.b.c.d -p 5201 -i 5 -t 1200 -P 10 -R
```
