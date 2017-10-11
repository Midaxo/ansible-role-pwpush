if /usr/bin/ruby -V | grep "2.4*"; then
	echo "Ruby already installed, exiting.."
	exit 0
fi
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.2.tar.gz
tar -xzvf ruby-2.4.2.tar.gz
cd ruby-2.4.2/
./configure
make
sudo make install
ruby -v