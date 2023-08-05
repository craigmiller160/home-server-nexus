#!/bin/sh

helm install \
  nexus \
  ./deploy/chart \
  --kube-context=microk8s \
  --wait \
  --timeout 5m \
  --namespace infra-prod \
  --values ./deploy/chart/values.yml

cd deploy/terraform
terraform init
terraform apply \
  -var="onepassword_token=$ONEPASSWORD_TOKEN" \
  -var="env=prod"