apt-get update
apt-get install -y git python-pip build-essential supervisor fail2ban libssl-dev python-dev libffi-dev 
easy_install -U pip
wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz --no-check-certificate
tar xf /root/libsodium-1.0.10.tar.gz 
cd /root/libsodium-1.0.10 && ./configure && make -j2 && make install 
cd /root/ && pip install cymysql 
git clone -b manyuser https://github.com/glzjin/shadowsocks.git
sed 's/NODE_ID = 11/NODE_ID = 3/' -i userapiconfig.py  #替换20为需要的节点号
mv /root/userapiconfig.py /root/shadowsocks/ 
mv /root/user-config.json /root/shadowsocks/ 
mv /root/shadowsocks.conf /etc/supervisor/conf.d/ && /etc/init.d/supervisor stop 
mv  rc.local /etc/
ulimit -n 51200
cd /root/shadowsocks/ && pip install -r requirements.txt
/etc/init.d/supervisor start
cd /root/
