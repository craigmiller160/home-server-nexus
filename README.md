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

## Cleanup Policy

The one piece of the setup that can't be automated via Terraform is the cleanup policy. Here is how to construct them.

### Options

- Component Usage = remove anything that hasn't been downloaded in 90 days.

### Variants

Create a policy for each of the following types:

- Maven
- NPM
- Docker
- Helm