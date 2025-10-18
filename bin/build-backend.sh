#!/bin/bash
# ===============================================
# Script : build-backend.sh
# Description : Clean + Build Maven in backend
# ===============================================

cd "$(dirname "$0")/../huremasys-backend" || exit

echo "=> Cleaning Maven projet..."
mvn clean

echo "=> Compilation et packaging..."
mvn package -DskipTests

echo "Build finished. File generated in : target/huremasys-backend.war"

