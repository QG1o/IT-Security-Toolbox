#!/bin/bash

# Fragt nach Protokoll (tcp/udp)
read -p "PROTOKOLL HER!: " PROTO
PROTO=${PROTO,,}

# Wenn keine Eingabe/ungültig dann TCP
if [[ "$PROTO" != "tcp" && "$PROTO" != "udp" ]]; then
  echo "FALSCHER PORT!!!! TCP wird verwendet!"
  PROTO="tcp"
fi

# Frage nach Port
read -p "PORT HER!: " PORT

# Wenn kein Port angegeben wurde, Standard 12345
if [ -z "$PORT" ]; then
  echo "KEIN PORT ANGEGEBEN!!! Standardport 12345 wird verwendet."
  PORT=12345
fi

while true; do
  echo "Beeep Beeep bitte kommen $PORT... (Protokoll: $PROTO)"
  
  if [ "$PROTO" = "udp" ]; then
    nc -ulvnp $PORT
  else
    nc -lvnp $PORT
  fi
done
