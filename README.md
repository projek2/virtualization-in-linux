## VIRTUALIZATION IN LINUX
#### Install Virtualbox In Xubuntu
##### Prasyarat 
- laptop Sudah Terinstall Linux
  
1. Automatis
   ```
   git clone https://github.com/projek2/virtualization-in-linux
   cd virtualization-in-linux
   bash installvm-xubuntu.sh

   atau

   wget https://raw.githubusercontent.com/projek2/virtualization-in-linux/refs/heads/master/installvm-xubuntu.sh
   bash installvm-xubuntu.sh
   ```   
2. Manual
```
sudo apt update && apt upgrade -y

sudo apt install git wget curl -y

wget https://download.virtualbox.org/virtualbox/7.1.8/virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb

sudo chmod +x virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb

sudo dpkg -i virtualbox-7.1_7.1.8-168469~Ubuntu~jammy_amd64.deb
```
ket : 
- Jika Cara di atas gagal instalasi atau ada error saat instal virtualbox

```
sudo dpkg -a configure
atau
sudo apt --fix-broken install
atau
sudo apt -f install
```
#### Install Alpine Linux Di VM








#### Install NodeJs Di Alpine Linux VM
1. Automatis
```
git clone https://github.com/projek2/virtualization-in-linux
cd virtualization-in-linux
bash installnodejs-webserver.sh

atau

wget https://raw.githubusercontent.com/projek2/virtualization-in-linux/refs/heads/master/installnodejs-webserver.sh
bash installnodejs-webserver.sh
```
2. Manual
```
apk update && apk upgrade --no-cache -y

apk add nodejs git wget --no-cache -y

echo "console.log('hello-world');">>hello-world.js

node hello-world.js

echo -e "var http = require ('http'); \n \
 var server = http.createServer(function (req, res) { \n \
 res.end('Hi, Selamat Datang Di NodeJs'); \n \
 }); \n \
 server.listen(3000); \n \
 console.log('server running on http://localhost:3000');" >>server.js

node server.js

```
Ket : 
- Script di atas dijalankan di dalam Alpine VM


contoh format gambar

![Teks alternatif](https://i.imgur.com/HgeQmvN.jpeg)

![Teks alternatif](https://i.imgur.com/MRK1DFt.jpeg)


   
