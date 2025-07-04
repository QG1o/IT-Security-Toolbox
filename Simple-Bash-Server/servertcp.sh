#!/bin/bash

read -p "PORT HER!: " PORT

if [ -z "$PORT" ]; then
  echo "KEIN PORT ANGEGEBEN!!! Standardport 12345 wird verwendet."
  PORT=12345
fi

while true; do
  echo "Beeep Beeep bitte kommen $PORT..."
  nc -lvnp $PORT
done
