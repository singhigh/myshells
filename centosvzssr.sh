#wget -N --no-check-certificate https://raw.githubusercontent.com/singhigh/myshells/master/ovzssrins.sh && bash ovzssrins.sh
yum update
yum install wget python-pip m2crypto git vim -y
pip install cymysql
yum install build-essential -y
wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz
tar xf libsodium-1.0.10.tar.gz && cd libsodium-1.0.10
./configure && make -j2 && make install
ldconfig
cd ~/
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
cd ~/shadowsocks
chmod 777 *.sh
cp config.json user-config.json
cp mysql.json usermysql.json
echo after setting the configuration, you may type bash run.sh to run the server.
vim apiconfig.py
vim usermysql.json
vim user-config.json
cd ~/shadowsocks
