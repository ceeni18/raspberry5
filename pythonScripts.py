sudo apt-get -y install git pkg-config libevent-pthreads-2.0-5 libao-dev libgnutls28-dev libmad0-dev libfaad-dev libjson0
//code libraries for audio plugin
wget -O pianobar.zip http://forums.adafruit.com/download/file.php?id=18707
unzip pianobar.zip
sudo mv pianobar /usr/local/bin
//piano bar installation
cd
wget http://pexpect.sourceforge.net/pexpect-2.3.tar.gz
tar xzf pexpect-2.3.tar.gz
cd pexpect-2.3
sudo python ./setup.py install
cd ..
sudo rm -r pexpect-2.3

//pexpet library in python

git clone https://github.com/adafruit/Python-WiFi-Radio
git clone https://github.com/adafruit/Adafruit-Raspberry-Pi-Python-Code

//adafruit radio specific software

cd Python-WiFi-Radio
ln -s ../Adafruit-Raspberry-Pi-Python-Code/Adafruit_CharLCDPlate/*.py .
//linking libraries to the radio software

cd
mkdir -p .config/pianobar

cd .config/pianobar
ln -s ../../Python-WiFi-Radio/config .

//open config using nano or vi
user = YOUR_EMAIL_ADDRESS
password = YOUR_PASSWORD


fingerprint=`openssl s_client -connect tuner.pandora.com:443 < /dev/null 2> /dev/null | openssl x509 -noout -fingerprint | tr -d ':' | cut -d'=' -f2`

sudo amixer cset numid=3 1
//make sure audio is routed to headphone jack

pianobar
//run with this command
))))))))
//increase volume

sudo shutdown -h now
//to power off

//**********************************************************************************************************************************************************

//Webdav connection for box.com

sudo apt-get install davfs2
//create a mount directory to be backed up

mkdir /home/pi/box

sudo mount -o uid=pi -o gid=pi -t davfs https://dav.box.com/dav /home/pi/box
// prompted for uname and password

sudo umount /home/pi/box
//unmount only if all docs are closed

//*********************** Automating the process****************************
vi /etc/davfs2/secrets
https://dav.box.com/dav  username  password

sudo usermod -aG davfs2 pi
// you'll have to give normal users the permission to run davfs2, without the need for root privileges. For that you'll have to enter the next command:

sudo dpkg-reconfigure davfs2

//finally mounting the cloud drive can be done by:

mount -o uid=pi -o gid=pi -t davfs https://dav.box.com/dav /home/pi/box

//and unmounting
fusermount -u /home/pi/box

// for full automation:

vi /etc/fstab

https://dav.box.com/dav /home/pi/box  davfs  rw,noexec,auto,user,async,_netdev,uid=pi,gid=pi  0  0

//drive mounts on boot
