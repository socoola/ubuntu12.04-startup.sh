wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2
tar xjvf Python-2.7.3.tar.bz2
cd Python-2.7.3/
apt-get install python-dev libltdl-dev
apt-get install libgtk2.0-dev pkg-config libatk1.0-dev libpango1.0-dev libfreetype6-dev libglib2.0-dev libx11-dev binutils-dev  libncurses5-dev  libxpm-dev libncurses5-dev
aptitude install libxpm-dev
apt-get install tk-dev
apt-get install libsqlite3-dev
apt-get install libbz2-dev
apt-get install libreadline6-dev libgdbm-dev

./configure  --enable-shared --enable-unicode=ucs4
make
make install

cd ..
wget http://downloads.sourceforge.net/project/skyeye/skyeye/skyeye-1.3.5/skyeye-1.3.5_rc1.tar.bz2?r=&ts=1372508788&use_mirror=nchc
tar xjvf package/skyeye-1.3.5_rc1.tar.bz2
cd skyeye-1.3.5_rc1
./autogen.sh
automake
./configure
make lib -j6
make -j6
make install_lib
make install

