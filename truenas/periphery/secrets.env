# Genral config
BASE_URL={{op://Komodo/Internal Network/base_url}}

####################################
# 🦎 KOMODO COMPOSE - VARIABLES 🦎 #
####################################

## These compose variables can be used with all Komodo deployment options.
## Pass these variables to the compose up command using `--env-file komodo/compose.env`.
## Additionally, they are passed to both Komodo Core and Komodo Periphery with `env_file: ./compose.env`,
## so you can pass any additional environment variables to Core / Periphery directly in this file as well.

## Stick to a specific version, or use `latest`
COMPOSE_KOMODO_IMAGE_TAG=latest

## Note: 🚨 Podman does NOT support local logging driver 🚨. See Podman options here:
## `https://docs.podman.io/en/v4.6.1/markdown/podman-run.1.html#log-driver-driver`
COMPOSE_LOGGING_DRIVER=local # Enable log rotation with the local driver.


## Configure a secure passkey to authenticate between Core / Periphery.
KOMODO_PASSKEY='op://Komodo/Komodo/Periphery/passkey'

#=------------------------------=#
#= Komodo Periphery Environment =#
#=------------------------------=#

## Full variable list + descriptions are available here:
## 🦎 https://github.com/mbecker20/komodo/blob/main/config/periphery.config.toml 🦎

## Periphery passkeys must include KOMODO_PASSKEY to authenticate.
PERIPHERY_PASSKEYS=${KOMODO_PASSKEY}

## Specify the root directory used by Periphery agent.
PERIPHERY_ROOT_DIRECTORY=/mnt/AppData/Komodo
PERIPHERY_REPO_DIR=${PERIPHERY_ROOT_DIRECTORY}/repos
PERIPHERY_STACK_DIR=${PERIPHERY_ROOT_DIRECTORY}/stacks
PERIPHERY_BUILD_DIR=${PERIPHERY_ROOT_DIRECTORY}/builds

## Enable SSL using self signed certificates.
## Connect to Periphery at https://address:8120.
PERIPHERY_SSL_ENABLED=true
PERIPHERY_SSL_KEY_FILE=${PERIPHERY_ROOT_DIRECTORY}/ssl/key.pem
PERIPHERY_SSL_CERT_FILE=${PERIPHERY_ROOT_DIRECTORY}/ssl/cert.pem

## If the disk size is overreporting, can use one of these to
## whitelist / blacklist the disks to filter them, whichever is easier.
## Accepts comma separated list of paths.
## Usually whitelisting just /etc/hostname gives correct size.
PERIPHERY_INCLUDE_DISK_MOUNTS=/etc/hostname
# PERIPHERY_EXCLUDE_DISK_MOUNTS=/snap,/etc/repos

## Include 1Password Service Token
OP_SERVICE_ACCOUNT_TOKEN="op://Komodo/Service Account Token/Token"