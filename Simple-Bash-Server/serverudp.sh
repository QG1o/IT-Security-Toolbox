#!/bin/bash

read -p "PORRRTT!!!: " PORT

# Wenn nichts eingegeben wurde, Standard-Port setzen
PORT=${PORT:-12345}

echo "Beeep Beeep bitte kommen $PORT..."

nc -u -l $PORT -v
