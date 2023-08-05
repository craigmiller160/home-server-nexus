#!/bin/sh

function import {
  terraform \
    import \
    -var="onepassword_token=$ONEPASSWORD_TOKEN"\
    -var="env=prod" \
    "$1" "$2"
}

function plan {
  terraform plan \
    -var "onepassword_token=$ONEPASSWORD_TOKEN" \
    -var="env=prod"
}

