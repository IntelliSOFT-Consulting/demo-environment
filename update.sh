#!/bin/sh

#COMPOSE='/usr/local/bin/docker-compose'

COMPOSE='/usr/bin/docker-compose'

echo "Starting to update the CBHIPP Test Server at: `date`"

# Restarts the demo by recreating the docker containers

# Update the compose file
git reset --hard origin/test-server
git pull

#cp conf/.env .env
../conf.sh .env

# Restart with new images
$COMPOSE pull
$COMPOSE down
$COMPOSE rm -v

# Remove unnamed volumes & images
docker volume list | grep -v demoenvironment | awk '{print $2}' | xargs docker volume rm
docker images | grep '<none>' | awk '{print $3}' | xargs docker rmi

$COMPOSE up -d

echo "Finished updating the CBHIPP Test Server at: `date`"
