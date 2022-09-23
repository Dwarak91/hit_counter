### Install sudo
apt install sudo

### Docker and docker compose prerequisites
apt-get install curl
apt-get install gnupg
apt-get install ca-certificates
apt-get install lsb-release

### Download the docker gpg file to Ubuntu
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

### Add Docker and docker compose support to the Ubuntu's packages list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/apt-get install docker-ce docker-ce-cli containerd.io docker-compose-pluginsudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-pluginlinux/ubuntu   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
 
### Install docker and docker compose on Ubuntu
apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
