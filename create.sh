#!/bin/bash
docker volume create --name gogs_data
chcon -R -u system_u -r object_r -t svirt_sandbox_file_t /var/lib/docker-latest/volumes/gogs_data/_data/
docker-compose up -d
