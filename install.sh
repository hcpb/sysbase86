apt-get -y install apache2 samba netatalk python-serial python-pygame \
	graphicsmagick libgphoto2-dev gphoto2 git libauthen-pam-perl \
	apt-show-versions dconf-editor gconf-editor openssh-server \
	gparted

wget http://webmin.com/download/deb/webmin-current.deb
dpkg -i webmin-current.deb
rm webmin-current.deb

cd /home/dgd

git clone http://github.com/alexdu/piggyphoto
cp -r piggyphoto/piggyphoto /usr/lib/python2.7
rm -rf piggyphoto

git clone http://github.com/hcpb/photobooth
chown -R dgd:dgd photobooth 

mkdir /var/www/html/photobooth
chmod 777 /var/www/html/photobooth
cd /var/www/html
mkdir for-display for-phone for-print raw-images
chmod 777 *


