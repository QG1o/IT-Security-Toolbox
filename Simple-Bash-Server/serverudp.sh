#!/bin/bash

PORT=12345

echo "Beeep Beeep bitte kommen $PORT..."

nc -luvnp $PORT
