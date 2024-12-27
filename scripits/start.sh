#!/bin/bash
echo "Starting ECS service..."
# Example: Force new deployment in ECS
aws ecs update-service --cluster my-cluster --service my_service --force-new-deployment
echo "Application started."
exit 0
