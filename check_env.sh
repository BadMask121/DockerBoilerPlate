#!/bin/bash

docker_environment=$(env | grep -i app_env | awk -F "=" '{print $NF}')
node_environment=$(env | grep -i node_env | awk -F "=" '{print $NF}')
app_env_user=$(env | grep -i app_user | awk -F "=" '{print $NF}')

echo ""
echo "N.B - To set the Docker environment varaible, copy the format of the following variables into your ~/.bashrc file:"
echo "export APP_ENV=environment"
echo "export APP_USER=name"
echo ""
echo "e.g. - If you were in the development environment, and your username was timi"
echo "export APP_ENV=dev"
echo "export APP_USER=timi"
echo ""
echo ""
echo "Accepted environment config names (APP_ENV): "
echo "development = dev | development"
echo "staging = stage | staging"
echo "production = prod | production"
echo ""
echo "==================================================="
echo "Your environment config details can be found below"
echo "==================================================="
echo ""
echo "Docker Environment: $docker_environment"
echo "Suggested env file path: ./env-conf/$app_env_user.env"
echo "Node Environment: $node_environment"
echo ""
echo "==================================================="
echo ""
echo ""