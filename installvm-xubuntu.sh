sudo apt update && apt upgrade -y


sudo apt install figlet git wget curl -y


figlet -c install-virtualbox


echo "Download Virtualbox in progress"

wget https://download.virtualbox.org/virtualbox/7.1.8/virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb

sudo chmod +x virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb

echo "Installation Virtualbox in progress"

sudo dpkg -i virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb


