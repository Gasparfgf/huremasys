#!/bin/bash
# ===============================================
# Script : deploy-backend.sh
# Description : Deploy application on Payara server
# ===============================================

APP_NAME="huremasys-backend"
WAR_PATH="$HOME/eclipse-workspace/huremasys/huremasys-backend/target/$APP_NAME.war"
DOMAIN_NAME="domain1"

echo "======================================================================================"

echo "Deploying the application on Server..."

if [ ! -f "$WAR_PATH" ]; then
  	echo "The $WAR_PATH file was not found. Did you run build-backend.sh?"
  	exit 1
fi

cd "$(dirname "$0")/../payara/bin" || exit 1

# Vérifie si le domaine est démarré
if ! ./asadmin list-domains | grep "$DOMAIN_NAME" | grep -q "running"; then
  	echo "Starting the domain $DOMAIN_NAME..."
  	./asadmin start-domain "$DOMAIN_NAME" >/dev/null
fi

./asadmin undeploy "$APP_NAME" >/dev/null 2>&1

./asadmin deploy "$WAR_PATH"

if [ $? -eq 0 ]; then
  	echo "Successful deployment !"
  	echo "🌍 Application available on : http://localhost:8080/$APP_NAME"
else
  	echo "Deployment failed. Check server.log for more information."
  	exit 1
fi
