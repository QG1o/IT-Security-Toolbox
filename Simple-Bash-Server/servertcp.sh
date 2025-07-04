#!/bin/bash

# Fragt nach Port
read -p "PORT HER!: " PORT

if [ -z "$PORT" ]; then
  # Wenn kein Port angegeben wurde setzen des Standardports 12345
  echo "KEIN PORT ANGEGEBEN!!! Standardport 12345 wird verwendet."
  PORT=12345
fi

# Ausgabe des Ports
while true; do
  echo "Beeep Beeep bitte kommen $PORT..."
  nc -lvnp $PORT
done
