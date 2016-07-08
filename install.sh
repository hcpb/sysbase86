apt-get -y install apache2 samba netatalk python-serial python-pygame \
	graphicsmagick libgphoto2-dev gphoto2 git libauthen-pam-perl apt-show-versions

useradd -G dialout,tty dgd

wget http://webmin.com/download/deb/webmin-current.deb
dpkg -i webmin-current.deb
rm webmin-current.deb

cd /home/dgd

git clone http://github.com/alexdu/piggyphoto
cp -r piggyphoto/piggyphoto /usr/lib/python2.7
rm -rf piggyphoto

git clone http://github.com/hcpb/photobooth
chown -R dgd:dgd photobooth 
