#!/bin/sh

cd deploy/terraform
terraform apply \
  -var="onepassword_token=$ONEPASSWORD_TOKEN" \
  -var="env=prod"