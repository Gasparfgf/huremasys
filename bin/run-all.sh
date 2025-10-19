#!/bin/bash
# ===============================================
# Script : run-all.sh
# Description : Build + Deploy + Start Payara
# ===============================================

echo "============================================"
echo "Launch of the complete Huremasys workflow"

echo "Step (1/3) - Build"
bash "$(dirname "$0")/build-backend.sh"

echo "Step (2/3) - Start"
bash "$(dirname "$0")/start-server.sh"

# Wait a few seconds for the server to start
sleep 10

echo "Step (3/3) - Deploy"
bash "$(dirname "$0")/deploy-backend.sh"

echo "Application successfully deployed !"

