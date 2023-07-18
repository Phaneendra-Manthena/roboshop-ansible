#!/bin/bash

# Function to create the virtual machine instance
create_instance() {
  gcloud compute instances create "$COMPONENT" \
    --project "$PROJECT_ID" \
    --zone "$ZONE" \
    --machine-type "$MACHINE_TYPE" \
    --image-family "$IMAGE_FAMILY" \
    --image-project "$IMAGE_PROJECT"

  if [ $? -eq 0 ]; then
    echo "Server Created - SUCCESS - Instance Name: ${COMPONENT}"
  else
    echo "Server Created - FAILED - Instance Name: ${COMPONENT}"
    exit 1
  fi
}

# Variables (customize as needed)
PROJECT_ID="phani-389308"
ZONE="us-west1-b"
MACHINE_TYPE="e2-medium"
IMAGE_FAMILY="centos8"
IMAGE_PROJECT="phani-389308"
env="dev"

# Create the virtual machine instances
for component in catalogue1 cart1 user1 shipping1 payment1 frontend1 mongodb1 mysql1 rabbitmq1 redis1; do
  COMPONENT="${component}-${env}"
  create_instance
done
