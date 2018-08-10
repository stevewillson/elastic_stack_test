#
# Steve Willson
# 6/26/18
# Download docker and install
#

# remove old versions of docker
echo "Removing old versions of docker"
sudo apt-get remove docker docker-engine docker.io

# update the repositories
sudo apt-get update

#Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
software-properties-common

# add the docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add the docker repo
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/$(lsb_release -is | tr [A-Z] [a-z]) \
$(lsb_release -cs) \
stable"

# Update the apt package index.
sudo apt-get update

# Install the latest version of Docker CE, or go to the next step to install a specific version:
sudo apt-get install docker-ce -y


