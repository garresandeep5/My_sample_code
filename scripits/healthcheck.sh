#!/bin/bash

set -e

SERVICE_NAME="service_poc"
CLUSTER_NAME="poc_cluster"

echo "Starting health check for service: $SERVICE_NAME in cluster: $CLUSTER_NAME..."

# Wait for the service to stabilize
aws ecs wait services-stable \
    --cluster $CLUSTER_NAME \
    --services $SERVICE_NAME

echo "Health check passed. The service is stable."
