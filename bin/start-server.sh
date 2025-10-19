#!/bin/bash
# ===============================================
# Script : start-server.sh
# Description : Starting Payara server
# ===============================================

PAYARA_HOME="$HOME/eclipse-workspace/huremasys/payara"
DOMAIN_NAME="domain1"

echo "===================================================================="

echo "Starting the Payara server..."

if [ ! -d "$PAYARA_HOME" ]; then
  	echo "Error: Payara folder not found at $PAYARA_HOME"
  	exit 1
fi

cd "$PAYARA_HOME/bin" || exit 1

if ! ./asadmin list-domains | grep -q "$DOMAIN_NAME"; then
  	echo "⚙️  Domaine $DOMAIN_NAME untraceable, creation..."
  	./asadmin create-domain --nopassword "$DOMAIN_NAME"
fi

./asadmin start-domain "$DOMAIN_NAME"

if [ $? -eq 0 ]; then
	echo "Payara server started successfully."
	echo "Server started on http://localhost:8080"
  	echo "🌐 Access application on http://localhost:8080/huremasys-backend"
  	echo "Server Administration Console: http://localhost:4848"
else
  	echo "Unable to start the domain. Check the logs !"
  	exit 1
fi

