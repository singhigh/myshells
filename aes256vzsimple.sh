apt-get update
apt-get install python-pip m2crypto git vim -y
pip install cymysql
cd ~/
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
cd ~/shadowsocks
chmod 777 *.sh
cp config.json user-config.json
cp mysql.json usermysql.json
vim usermysql.json
#把数据库信息复制进去。
./logrun.sh
./tail.sh
#vim apiconfig.py
#vim user-config.json
