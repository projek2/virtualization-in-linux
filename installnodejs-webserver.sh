apk update && apk upgrade --no-cache -y

apk add figlet nodejs git wget --no-cache -y

figlet -c Contoh Nodejs Console

echo "console.log('hello-world');">>hello-world.js

node hello-world.js

figlet -c Contoh Nodejs Webserver

echo -e "var http = require ('http'); \n \
 var server = http.createServer(function (req, res) { \n \
 res.end('Hi, Selamat Datang Di NodeJs'); \n \
 }); \n \
 server.listen(3000); \n \
 console.log('server running on http://localhost:3000');" >>server.js


echo "Test Running Nodejs Webserver"


node server.js
