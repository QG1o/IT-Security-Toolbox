#!/bin/bash

read -p "POOORRTT!!: " PORT
PORT=${PORT:-12345}

while true; do
  echo "Beeep Beeep bitte kommen $PORT..."
  nc -lvnp $PORT
done
