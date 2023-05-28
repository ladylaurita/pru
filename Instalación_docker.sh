sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

#clave GPG para el repositorio oficial de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


#repositorio Docker a las fuentes APT
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce

#instalación de docker
sudo apt install docker-ce

#ejecutar docker sin sudo
sudo usermod -aG docker ${USER}
su - ${USER}

sudo systemctl status docker

#instalación de docker engine
sudo apt install docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin