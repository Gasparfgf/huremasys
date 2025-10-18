#!/bin/bash
# ===============================================
# Script : stop-server.sh
# Description : Stoping Payara server
# ===============================================

PAYARA_HOME="$(dirname "$0")/../payara/bin"

echo "=> Stoping server..."
#"$PAYARA_HOME/bin/asadmin" stop-domain
./asadmin stop-domain

echo "The server was stoped successfully"

