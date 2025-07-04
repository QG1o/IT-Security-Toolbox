#!/bin/bash

PORT=12345

echo "Beeep Beeep bitte kommen $PORT..."

nc -u -l $PORT -v
