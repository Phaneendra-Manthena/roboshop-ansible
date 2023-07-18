#!/bin/bash

# Variables (customize as needed)
PROJECT_ID="phani-389308"
ZONE="us-west1-b"
INSTANCE_NAME="${COMPONENT}"
MACHINE_TYPE="e2-medium"
IMAGE_FAMILY="centos-8"
IMAGE_PROJECT="centos8"
env="dev"

# Create the virtual machine instance
gcloud compute instances create "$INSTANCE_NAME" \
  --project "$PROJECT_ID" \
  --zone "$ZONE" \
  --machine-type "$MACHINE_TYPE" \
  --image-family "$IMAGE_FAMILY" \
  --image-project "$IMAGE_PROJECT"
for component in catalogue1 cart1 user1 shipping1 payment1 frontend1 mongodb1 mysql1 rabbitmq1 redis1 ; do
  COMPONENT="${component}-${env}"
  create_instance
done