#!/bin/bash

PORT=12345

while true; do
  # nc wartet auf eine Verbindung auf PORT, empfängt eine Nachricht, gibt sie aus
  echo "Beeep Beeep bitte kommen $PORT..."
  nc -l -p $PORT
done
