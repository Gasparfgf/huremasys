#!/bin/bash
# ===============================================
# Script : deploy-backend.sh
# Description : Deploy application on Payara server
# ===============================================

#PAYARA_HOME="../payara"
WAR_PATH="../../huremasys-backend/target/huremasys-backend.war"

cd "$(dirname "$0")/../payara/bin" || exit

echo "==================================================================="
echo "Déploiement du backend sur Payara..."

#"$PAYARA_HOME/bin/asadmin" undeploy huremasys-backend
./asadmin undeploy huremasys-backend

#"$PAYARA_HOME/bin/asadmin" deploy "$WAR_PATH"
./asadmin deploy "$WAR_PATH"

echo "Déploiement terminé : http://localhost:8080/huremasys-backend"

