#!/bin/sh

if [ "$#" -ne 1 ]; then
  cat <<EOT
  \$ $0 IPADDR
EOT
  exit 1
fi

ansible $1 -i hosts -m win_ping
