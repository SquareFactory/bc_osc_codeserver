#!/usr/bin/env bash
set -ex

# Print compute node.
echo "$(date): Running on compute node $host:$port"

. $LMOD_PKG/init/sh
ml purge
ml gentoo
ml openvscode-server

#
# Start Code Server.
#
echo "$(date): Started code-server"
echo ""

server.sh \
  --connectionToken "${password}" \
  --port "${port}" \
  --host 0.0.0.0 \
  --disable-telemetry
