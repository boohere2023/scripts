#!/bin/bash
set -e
 
# Detect Linux distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
else
    echo "Unsupported distribution!"
    exit 1
fi
 
# Install Docker
install_docker() {
    if [ "$ID" == "ubuntu" ] || [ "$ID" == "debian" ]; then
        apt-get update
        apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg
        curl -fsSL https://download.docker.com/linux/$ID/gpg | apt-key add -
        add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/$ID $(lsb_release -cs) stable"
        apt-get update
        apt-get install -y docker-ce
    elif [ "$ID" == "centos" ]; then
        yum install -y yum-utils device-mapper-persistent-data lvm2
        yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
        yum install -y docker-ce
        systemctl start docker.service
        systemctl enable docker.service
    elif [ "$ID" == "fedora" ]; then
        dnf -y install dnf-plugins-core
       dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
        dnf install -y docker-ce
    else
        echo "Unsupported distribution!"
        exit 1
    fi
}
 
# Install Docker Compose
install_docker_compose() {
    COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
    curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
}
 
# Start installation
echo "Installing Docker"
install_docker
echo "Docker installed successfully."
 
echo "Installing Docker Compose..."
install_docker_compose
echo "Docker Compose installed successfully."
