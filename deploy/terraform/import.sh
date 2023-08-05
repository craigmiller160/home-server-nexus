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

import "nexus_blobstore_file.npm_private" "npm-private"
import "nexus_blobstore_file.npm_proxy" "npm-proxy"
import "nexus_blobstore_file.npm_group" "npm-group"
import "nexus_blobstore_file.docker_private" "docker-private"
import "nexus_blobstore_file.docker_proxy" "docker-proxy"
import "nexus_blobstore_file.docker_group" "docker-group"
import "nexus_blobstore_file.helm_private" "helm-private"

import "nexus_repository_npm_hosted.npm_private" "npm-private"
import "nexus_repository_npm_proxy.npm_proxy" "npm-proxy"
import "nexus_repository_npm_group.npm_group" "npm-group"
import "nexus_repository_docker_hosted.docker_private" "docker-private"
import "nexus_repository_docker_proxy.docker_proxy" "docker-proxy"
import "nexus_repository_docker_group.docker_group" "docker-group"
import "nexus_repository_helm_hosted.helm_private" "helm-private"

import "nexus_security_user.craigmiller160" "craigmiller160"

plan