pkg install apt curl wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
chmod +x start-ubuntu.sh
./start-ubuntu.sh
apt install software-properties-common -y
add-apt-repository ppa:openjdk-r/ppa -y && apt update
apt install openjdk-8-jre -y
cd ~ && mkdir mc_server && cd mc_server
wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
echo "eula=true" > eula.txt
echo "Server starting!"
java -jar server.jar
