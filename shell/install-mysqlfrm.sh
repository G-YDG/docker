echo "install wget"
apt-get install wget,python -y

echo "wget https://cdn.mysql.com/archives/mysql-utilities/mysql-utilities-1.6.5.tar.gz"
wget https://cdn.mysql.com/archives/mysql-utilities/mysql-utilities-1.6.5.tar.gz

tar zxf mysql-utilities-1.6.5.tar.gz
cd mysql-utilities-1.6.5

echo "setup"
python ./setup.py build
python ./setup.py install

mysqlfrm --version