#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Must provide command"
  exit 1
fi

helm $1 \
  nexus \
  ./deploy/chart \
  --kube-context=microk8s \
  --wait \
  --timeout 5m \
  --namespace infra-prod \
  --values ./deploy/chart/values.yml