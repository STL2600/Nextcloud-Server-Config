# Nextcloud-Server-Config
An easy to set up docker-compose based personal Nextcloud server, with Collabora for online editing.

# Instructions
* Set up a server with docker and docker-compose
* Clone this repo on to the server you want to set up.
* Edit config.sh appropriately
* Run
```bash
    source config.sh
    docker-compose up -d nc_nextcloud-db_1
```
* Wait about fifteen seconds for the database to start up
* Then run
```bash
    docker-compose up -d
```
* At this point, the server should be up and running, but we'll want to set up encryption before we log in.
* Log into the nginx container with the command
```bash
    docker exec -it nc_nginx_1 /bin/bash
```
* Once logged into the container, run
```bash
    apt-get update
    apt-get install certbot python-certbot-nginx
```
* When that finishes installing, run
```bash
    certbot --nginx
```
* Once you've followed the prompts and certbot is finished, your server is complete!

