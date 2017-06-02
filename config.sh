# The container name prefix you want to use
export COMPOSE_PROJECT_NAME=nc

# Domain names, these should be the same, but the collabora domain needs to
# have it's .s prefixed by double back-slashes
export COLLABORA_DOMAIN="test-domain\\.com"
export NEXTCLOUD_DOMAIN="test-domain.com"

# MySQL access information
export MYSQL_ROOT_PASSWORD=mygreatpassword
export MYSQL_USER_PASSWORD=mygreatpassword

# Admin user login info
export NEXTCLOUD_ADMIN_USER=admin
export NEXTCLOUD_ADMIN_PASSWORD=mygreatpassword

# Mount points
# Should be set to wherever this repo is cloned to
export NEXTCLOUD_CONFIG=/repo
# Should be set to where you want to store data from the containers
export NEXTCLOUD_DATA=/data
