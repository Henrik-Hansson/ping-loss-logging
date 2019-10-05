#!/bin/bash
while [ TRUE ];do
  DATE=$(date +%Y-%m-%d_%H:%M:%S)
  PING=$(ping 1.1.1.1 -c 10 | awk '/packet loss/ {print $0}')
  echo "$DATE $PING"
done
