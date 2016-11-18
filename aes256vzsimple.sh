apt-get update
apt-get install python-pip m2crypto git vim curl unzip -y && pip install cymysql
cd ~/
wget http://ytd.gdp.nu:38090/52041387f9ee9961e6e5fdb0099c48c8d6a9aa94.zip && unzip 52041387f9ee9961e6e5fdb0099c48c8d6a9aa94.zip
mv shadowsocks-52041387f9ee9961e6e5fdb0099c48c8d6a9aa94 shadowsocks
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
