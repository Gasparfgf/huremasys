#!/bin/bash
# ===============================================
# Script : start-server.sh
# Description : Starting Payara server
# ===============================================

DOMAIN_NAME="domain1"

echo "===================================================================="

echo "Starting the Payara server..."

cd "$(dirname "$0")/../payara/bin" || exit 1

if ! ./asadmin list-domains | grep -q "$DOMAIN_NAME"; then
  	echo "Domaine $DOMAIN_NAME untraceable, creation..."
  	./asadmin create-domain --nopassword --adminport 4848 --instanceport 8080 "$DOMAIN_NAME"
fi

./asadmin start-domain

if [ $? -eq 0 ]; then
	echo "Payara server started successfully."
	echo "Server started on http://localhost:8080"
  	echo "🌐 Access application on http://localhost:8080/huremasys-backend"
  	echo "Server Administration Console: http://localhost:4848"
else
  	echo "Unable to start the domain. Check the logs !"
  	exit 1
fi

