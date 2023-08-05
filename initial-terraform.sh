#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Must provide command"
  exit
fi

cd deploy/terraform
terraform $1 \
  -var="onepassword_token=$ONEPASSWORD_TOKEN" \
  -var="env=prod"