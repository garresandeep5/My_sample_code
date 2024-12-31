#!/bin/bash

set -e

echo "Starting cleanup tasks..."

# Example: Remove old Docker images to save space
docker images -q | xargs docker rmi -f || echo "No images to clean up."

echo "Cleanup completed."
