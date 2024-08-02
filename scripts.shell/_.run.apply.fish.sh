#!/usr/bin/env fish

MY_PUBLIC_IP_ADDRESS=(dig +short txt ch whoami.cloudflare @1.0.0.1 | awk -F'"' '{ print $2}') \
echo "Public IP Addess: $MY_PUBLIC_IP_ADDRESS"

MY_PUBLIC_IP_ADDRESS=(dig +short txt ch whoami.cloudflare @1.0.0.1 | awk -F'"' '{ print $2}') \
tofu apply -var="public_ip_address=$MY_PUBLIC_IP_ADDRESS"

