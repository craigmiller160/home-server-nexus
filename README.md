# Home Server Nexus

This is the Helm chart that deploys Sonatype Nexus to the cluster.

## Pre-Requisites

1. 1Password

## Environment Variables

The following shell environment variables must be present on the machine in order to properly deploy this chart:

```
# The operator access token for communicating with 1Password
ONEPASSWORD_TOKEN=XXXXXXX
```