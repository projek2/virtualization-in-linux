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


![Teks alternatif]()

![Teks alternatif]()





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

#### Install NAS (Network Attachead Storage)

1) Buka Oracle VM Virtualbox kemudian klik New, isikan misalnya :
Name = FreeNAS puspa 
Type = BSD
Version = FreeBSD 64bit

![Teks alternatif](https://i.imgur.com/spaPAe8.jpeg)

2) Ukuran memory sizenya, atur sesuai dengan spek laptop kalian, disini saya menggunakan 1024, kemudian klik Next.

![Teks alternatif](https://i.imgur.com/hx0JVuw.jpeg)

3) Kemudian masukkan ISO FreeNAS.   

![Teks alternatif](https://i.imgur.com/rvE6wlg.jpeg)

4) Kemudian kita ke jaringan, kita menggunakan adaptor ter-bridge. Kemudian klik OK. Selanjutnya klik Start dan mulailah instalasi.

![Teks alternatif](https://i.imgur.com/Qgudrnn.jpeg)

5) Kemudian Start FreeNas nya.

![Teks alternatif](https://i.imgur.com/GcWPpQP.jpeg)

6) Pilih type FreeNAS Intaller, kita tekan ENTER.

![Teks alternatif](https://i.imgur.com/azkiB3C.jpeg)

7) Pilih Install/Upgrade, tekan ENTER.

![Teks alternatif](https://i.imgur.com/ZbR3hpv.jpeg)

8) This computer has less than the recommended 4 GB of Ram. Kita pilih Yes kemudian tekan enter.

![Teks alternatif](https://i.imgur.com/CIFFb9q.jpeg)

9) Tekan space untuk VBOX HARDDISK -- 16.0 GiB , kalau sudah kita pilih OK kemudian tekan ENTER.

![Teks alternatif](https://i.imgur.com/Zfj6AeQ.jpeg)

10) Proceed with the installation, pilih YES kemudian tekan ENTER.

![Teks alternatif](https://i.imgur.com/bxcwooA.jpeg)

11) Buatlah password, dan ingat! pastikan anda tidak lupa dengan password yang telah dibuat.

![Teks alternatif](https://i.imgur.com/JxAqQNg.jpeg)

12) FreeNAS can be booted in either BIOS or UEFI mode. Kita pilih Boot via BIOS, kemudian tekan ENTER.

![Teks alternatif](https://i.imgur.com/gWdwy3J.jpeg)

13) Kita tunggu proses instalasinya, disini prosesnya agak sedikit lama, tergantung dari perangkat yang kalian gunakan.

![Teks alternatif](https://i.imgur.com/m30dZPM.jpeg)

14) Setelah selesai, klik OK.

![Teks alternatif](https://i.imgur.com/kTU3EMY.jpeg)

15) Pilih Shutdown System. Kemudian pilih OK, tekan ENTER.
![Teks alternatif](https://i.imgur.com/qh9bAUy.jpeg)

16) Kita klik Settings kemudian klik Storage, klik CD/ISO FreeNAS kemudian klik tanda seperti gambar dibawah yang melambangkan (Remove). Kemudian kita pilih Remove. Kemudian klik OK. Lalu jalankan kembali mesin virtual FreeNAS nya.
![Teks alternatif](https://i.imgur.com/oEyHJRZ.jpeg)

17) Langsung saja tekan ENTER. Lalu tunggu prosesnya sekitar 10-15 menit.
![Teks alternatif](https://i.imgur.com/I2ekvXk.jpeg)

18) Jika sudah, akan muncul tampilan awal seperti dibawah ini.
![Teks alternatif](https://i.imgur.com/lp3v870.jpeg)

19) Sekarang kita ingin mengkonfigurasi Network Interfacesnya yang akan diakses oleh browser dengan alamat IP Address kita. Langsung saja pilih nomor 1 yaitu Configure Network Interfaces , kemudian tekan ENTER.

Setelah itu, ikuti langkah-langkah seperti gambar dibawah ini:

    Select an interface (q to quit) : 1
    Reset network configuration? (y/n) n
    Configure interface for DHCP? (y/n) n
    Configure IPv4? (y/n) y
    Interface name : em0
    IPv4 Address : 192.168.17.7
    IPv4 Netmask : 255.255.255.0
    Configure IPv6? (y/n) n
![Teks alternatif](https://i.imgur.com/F6VnI6z.jpeg)

26) Selanjutnya kita buka browser kemudian kita ketik IP Address yang telah kita buat, login dengan user root dan password yang telah kita buat.
![Teks alternatif](https://i.imgur.com/30fEUED.jpeg)

27) Dan inilah tampilan FreeNAS.
![Teks alternatif](https://i.imgur.com/2MlMvcM.jpeg)
