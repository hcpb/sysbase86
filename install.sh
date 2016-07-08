apt-get -y install apache2 samba netatalk python-serial python-pygame \
	graphicsmagick libgphoto2-dev gphoto2 git libauthen-pam-perl apt-show-versions

useradd -G dialout,tty dgd

wget http://webmin.com/download/deb/webmin-current.deb

dpkg -i *.deb

