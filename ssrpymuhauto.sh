#wget -N --no-check-certificate https://raw.githubusercontent.com/singhigh/myshells/master/ssrpymuhauto.sh && bash ssrpymuhauto.sh
#curl https://debgen.simplylinux.ch/txt/jessie/sources_02afb983ca66b4136396fe1f3cc5e8052fa5532a.txt | sudo tee /etc/apt/sources.list
apt-get update
apt-get build-essential curl install python-pip m2crypto git vim -y
wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/serverspeeder/master/serverspeeder-all.sh && bash serverspeeder-all.sh
pip install cymysql
wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz
tar xf libsodium-1.0.10.tar.gz && cd libsodium-1.0.10
./configure && make -j2 && make install
ldconfig
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
cd ~/shadowsocks
chmod 777 *.sh
cp config.json user-config.json
echo after setting the configuration, you may type bash run.sh to run the server.
vim apiconfig.py
vim user-config.json
cd ~/shadowsocks
