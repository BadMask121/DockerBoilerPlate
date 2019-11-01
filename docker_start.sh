#!/bin/bash
#comment out the line below to clean docker (EVERYTHING)
# clear && docker system prune && docker volume prune

if [ "$APP_ENV" == "dev" ] || [ "$APP_ENV" == "development" ]; then
    echo ""
    echo "Starting up/Building Symmetry for the DEVELOPMENT environment . . ."
    echo "Using .env file: ./env-conf/$APP_USER.env"
    echo ""
    source ./env-conf/$APP_USER.env
    docker-compose up --build
fi

if [ "$APP_ENV" == "stage" ] || [ "$APP_ENV" == "staging" ]; then
    echo ""
    echo "Starting up/Building Symmetry for the STAGING environment . . ."
    echo "Using .env file: ./env-conf/$APP_USER.env"
    echo ""
    source ./env-conf/$APP_USER.env
    docker-compose up --build
fi

if [ "$APP_ENV" == "prod" ] || [ "$APP_ENV" == "production" ]; then
    echo ""
    echo "Starting up/Building Symmetry for the PRODUCTION environment . . ."
    echo "Using .env file: ./env-conf/$APP_USER.env"
    echo ""
    source ./env-conf/$APP_USER.env
    docker-compose up --build
fi

# docker-compose up --build
