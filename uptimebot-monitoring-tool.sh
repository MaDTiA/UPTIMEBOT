#!/bin/bash

# ──────────────────────────────────────────────────────────────────────────
#  MaDTiA | https://madtia.cc
#  Uptime Kuma Quick & Custom Deploy Script
#  © 2025 MaDTiA. All Rights Reserved.
# ──────────────────────────────────────────────────────────────────────────

# Description of the script
echo "───────────────────────────────────────────────"
echo " Uptime Kuma Deployment Script"
echo "───────────────────────────────────────────────"
echo " Uptime Kuma is a powerful self-hosted monitoring tool."
echo " It allows you to monitor the uptime of your websites,"
echo " services, and APIs with real-time dashboards."
echo "───────────────────────────────────────────────"
echo ""

# Function to install dependencies
install_dependencies() {
    echo "Updating package list and installing Docker & Docker Compose..."
    sudo apt update && sudo apt install -y docker.io docker-compose
}

# Function to deploy Uptime Kuma
deploy_kuma() {
    local PORT=$1
    echo "Deploying Uptime Kuma on port $PORT..."
    docker run -d --restart=always -p $PORT:3001 --name uptime-kuma louislam/uptime-kuma
}

# Function to remove Uptime Kuma
remove_kuma() {
    if docker ps -a --format '{{.Names}}' | grep -q '^uptime-kuma$'; then
        echo "Stopping and removing Uptime Kuma..."
        docker stop uptime-kuma && docker rm uptime-kuma
        echo "Uptime Kuma has been removed."
    else
        echo "Uptime Kuma is not installed or already removed."
    fi
}

# Main menu
echo "Select an option:"
echo "1) Quick Deploy (Port 3001)"
echo "2) Custom Deploy (Set your own port)"
echo "3) Remove Uptime Kuma"
read -p "Enter your choice (1, 2, or 3): " CHOICE

if [[ "$CHOICE" == "1" ]]; then
    install_dependencies
    deploy_kuma 3001
elif [[ "$CHOICE" == "2" ]]; then
    read -p "Enter your desired port: " CUSTOM_PORT
    install_dependencies
    deploy_kuma $CUSTOM_PORT
elif [[ "$CHOICE" == "3" ]]; then
    remove_kuma
else
    echo "Invalid choice. Exiting..."
    exit 1
fi

echo ""
echo "───────────────────────────────────────────────"
echo " Operation complete."
echo " Visit MaDTiA: https://madtia.cc"
echo " Thanks for using this script!"
echo "───────────────────────────────────────────────"