#!/bin/bash
# ===============================================
# Script : build-backend.sh
# Description : Clean + Build Maven in backend
# ===============================================

cd "$(dirname "$0")/../huremasys-backend" || exit 1

echo "================================================================="

echo "Cleaning and building the Maven project..."

if [ ! -f "pom.xml" ]; then
  	echo "No pom.xml file found. Are you in the correct folder ?"
  	exit 1
fi

mvn clean package -DskipTests

if [ $? -eq 0 ]; then
  	echo "Build finished successfully !"
  	echo "File generated in : target/huremasys-backend.war"
else
  	echo "Maven build failed."
  	exit 1
fi

echo "=============================================================="

