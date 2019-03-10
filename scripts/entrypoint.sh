#!/bin/bash

echo "cs:x:$(id -u):0:cs user:/home/cs:/sbin/nologin" >> /etc/passwd

export HOME=/home/cs
export USER=cs
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/usr/local/lib64:/usr/lib64

cd /home/cs
mkdir -p /home/cs/code/logs
mkdir /home/cs/work
/home/cs/bin/code-server --data-dir=/home/cs/code /home/cs/work
