#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <tcp|udp> <port>"
  exit 1
fi

PROTO=$1
PORT=$2

if [ "$PROTO" == "tcp" ]; then
  echo "Beeep Beeep bitte kommen $PORT..."
  nc -lvnp $PORT
elif [ "$PROTO" == "udp" ]; then
  echo "Beeep Beeep bitte kommen $PORT..."
  nc -luvnp $PORT
else
  echo "Protocol must be 'tcp' or 'udp'"
  exit 1
fi
