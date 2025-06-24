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

1. Setup VirtualBox VM with Alpine ISO
Buka VirtualBox dan klik tombol "New" untuk mulai membuat VM Baru.
![Teks alternatif](https://i.imgur.com/p9O8ti3.jpeg)

2. Sekarang, pilih Mode Terpandu dan Tetapkan yang berikut:
- Name: Alpine
- Kernel: Other Linux
![Teks alternatif](https://i.imgur.com/8PdMD32.jpeg)

3. Sekarang Masukkan ISO Alpine nya
![Teks alternatif](https://i.imgur.com/EJuklyf.jpeg)

4. Setelah itu ke Network Pilih Adapter 1 dari "NAT" Ubah menjadi "Briged Adapter"
![Teks alternatif](https://i.imgur.com/oF2LoqM.jpeg)

5. Nah ini adalah tampilan awal nya 
![Teks alternatif](https://i.imgur.com/MyiMVdN.jpeg)

7. Text-based Alpine installation
Ketika mesin dimulai, Anda akan diminta untuk masuk. Hanya mengetik rootdan masuk. Pengguna root default tidak memiliki kata sandi. Anda akan siap untuk menginstal sistem sekarang.
![Teks alternatif](https://i.imgur.com/Qn4Yyyw.jpeg)

8. Keyboard layout
Setelah login lalu ketikan:
```
setup-alpine
```
Ini akan memulai installer.
Tata letak keyboard

Anda harus memilih layout keyboard. Di sini, saya memilih "us". Ini akan meminta untuk memilih varian di keyboard AS. Saya kembali memasukkan “us” sebagai pilihan.

![Teks alternatif](https://i.imgur.com/9ZTdhgQ.jpeg)

9. NameHost
Masukkan nama host pilihan Anda. Defaultnya adalah localhost. Dan kemudian tekan masuk.

![Teks alternatif](https://i.imgur.com/Fd6RXOy.jpeg)

10. Interface selection
Installer akan meminta pemilihan Interface jaringan. Karena, ia memilih default untuk saya, saya akan menekan Enter key. Jika Anda memiliki interface lain, Anda dapat memilih ?"? "untuk bantuan. Untuk VirtualBox, default sudah cukup.
Dan meminta untuk mengatur IP. Saya akan pergi dengan DHCP default. Juga, tidak ada pengaturan manual lebih lanjut.

![Teks alternatif](https://i.imgur.com/U9wB46N.jpeg)

11. Root password
Seperti yang saya sebutkan sebelumnya, akun root tidak memiliki kata sandi. Anda harus mengaturnya untuk tujuan keamanan.

Anda perlu mengetik dan mengetik ulang kata sandi root dalam langkah ini. Tak perlu dikatakan bahwa tidak ada yang ditampilkan di layar saat Anda mengetik kata sandi. Hanya mengetik dan tekan enter.

![Teks alternatif](https://i.imgur.com/M3yNBoe.jpeg)

12. TimeZone
Anda harus memilih zona waktu. Defaultnya adalah UTC. Tekan “?” untuk daftar zona waktu yang tersedia. Seperti yang Anda lihat, saya telah mengaturnya ke Asia/Jakarta dan kemudian menekan masuk.

![Teks alternatif](https://i.imgur.com/pZcLw8h.jpeg)

13. Pengaturan Proxy
  
Jika Anda memiliki proxy HTTP, masukkan pada tahap ini, saya tidak punya apa-apa, jadi saya melewatkan langkah dengan menekan tombol Enter.

![Teks alternatif](https://i.imgur.com/Q9eqzJ0.jpeg)

14. Klien NTP
Pilih klien NTP mana yang akan dijalankan. Sekali lagi saya akan dengan [Chrony] default.

![Teks alternatif](https://i.imgur.com/UiNzHiC.jpeg)

15. APK Mirror
  
Layar berikutnya adalah tentang APK Mirror. Anda dapat melihat beberapa baris daftar APK Mirror. Tekan R untuk melihat semua. Sekarang, Anda perlu menekan "f" dan masuk untuk secara otomatis menganalisis dan menyimpan APK Mirror tercepat dari daftar.

![Teks alternatif](https://i.imgur.com/YdSukVW.jpeg)

16. User

Anda akan membutuhkan pengguna tambahan selain root, untuk kasus penggunaan normal. Anda dapat membuatnya di sini, tepat di dalam installer, untuk menghindari kesulitan surat. Untuk ini, Anda perlu memasukkan nama pengguna (semua huruf kecil), nama lengkap untuk pengguna dan mengetik dan mengetik ulang kata sandi pengguna.
Siapkan pengguna baru dengan password

![Teks alternatif](https://i.imgur.com/bupKvc7.jpeg)
Dan Beberapa Pengaturan SSH
Berikutnya adalah beberapa pengaturan terkait SSH, dan saya telah memilih semua opsi default, dengan hanya menekan kunci enter.

![Teks alternatif](https://i.imgur.com/bupKvc7.jpeg)

17. Partisi yang Disk

Langkah ini penting, karena memutuskan pemasangan sistem. Anda harus mempartisi disk. Ini akan daftar disk yang tersedia, dan Anda dapat memasukkan "?" untuk bantuan.

Kemudian pilih disk yang perlu digunakan dengan nama. Dalam kasus saya, itu adalah SDA, dengan ruang penyimpanan. Ini akan bertanya bagaimana menggunakannya. Anda memiliki beberapa pilihan seperti “sys”, “data” dll. Untuk kasus penggunaan normal, Anda perlu memilih opsi “sys” dan tekan enter.

Ini kemudian akan menunjukkan peringatan tentang menghapus data. Tekan “y” dan masuk.

Setelah beberapa waktu, Anda akan mendapatkan pemberitahuan bahwa instalasi selesai.

![Teks alternatif](https://i.imgur.com/aWEk4gn.jpeg)

Ket: Setelah itu anda dapat me-reboot sistem atau mematikan sistem menggunakan:
```
reboot
atau
poweroff
```
Kemudian, lepaskan ISO yang terpasang dan mulai mesin lagi untuk menghindari booting ke ISO hidup.




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
