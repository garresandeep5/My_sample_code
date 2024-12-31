#!/bin/bash

set -e

CANARY_URL="mypoclb-523229169.ap-south-1.elb.amazonaws.com" # Replace with your canary health endpoint

echo "Checking health of the canary deployment..."

response=$(curl --write-out "%{http_code}" --silent --output /dev/null $CANARY_URL)

if [ "$response" -ne 200 ]; then
    echo "Canary health check failed with HTTP status $response. Exiting."
    exit 1
fi

echo "Canary health check passed."
