#wget -N --no-check-certificate https://raw.githubusercontent.com/singhigh/myshells/master/ssrpymuhauto.sh && bash ssrpymuhauto.sh
curl https://debgen.simplylinux.ch/txt/jessie/sources_02afb983ca66b4136396fe1f3cc5e8052fa5532a.txt | sudo tee /etc/apt/sources.list
apt-get update
apt-get install python-pip m2crypto git vim -y
wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/serverspeeder/master/serverspeeder-all.sh && bash serverspeeder-all.sh
pip install cymysql
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
cd shadowsocks
vim apiconfig.py
