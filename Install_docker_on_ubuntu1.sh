Lab - Deploying Docker on a virtual machine - Practice commands
You can use the following commands to work with Docker on an Ubuntu Linux virtual machine

OR

You can also refer to Docker documentation - https://docs.docker.com/engine/install/ubuntu/

// Update the package index

sudo apt-get update

// Install packages to allow apt to use the repository over HTTPS

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
// Add Docker's official GPG key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
// Setup a stable repository

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
// Update the package index

sudo apt-get update

// Install docker, containerd

 sudo apt-get install docker-ce docker-ce-cli containerd.io
// Launching a container

sudo docker run --name mynginx -p 80:80 -d nginx

