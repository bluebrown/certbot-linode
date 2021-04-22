#!/bin/sh

set -e

echo "dns_linode_key = $API_KEY" > /linode.ini
echo "dns_linode_version = $API_VERSION" >> /linode.ini
chmod 600 /linode.ini

certbot certonly --dns-linode --dns-linode-credentials /linode.ini -n --agree-tos $@
