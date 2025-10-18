#!/bin/bash
# ===============================================
# Script : start-server.sh
# Description : Starting Payara server
# ===============================================

#PAYARA_HOME="$(dirname "$0")/../payara"
cd "$(dirname "$0")/../payara/bin" || exit

echo "=> Starting server..."
#"$PAYARA_HOME/bin/asadmin" start-domain
./asadmin start-domain

echo "Server started on http://localhost:8080"
echo "Server Administration Console: http://localhost:4848"

