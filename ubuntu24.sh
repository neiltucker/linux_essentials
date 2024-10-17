sudo apt-get update && sudo apt-get -y upgrade && apt-get autoremove && apt-get autoclean
sudo apt install git-all -y

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
