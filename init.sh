sudo apt update
sudo apt upgrade

sudo apt install fuse
sudo apt install neofetch
sudo apt install libnfc*
sudo apt install libusb*
# sudo apt install libtool-bin

sudo mkdir /usr/local/etc/nfc
sudo touch /usr/local/etc/nfc/libnfc.conf
sudo chmod 777 /usr/local/etc/nfc/libnfc.conf
sudo echo "allow_intrusive_scan = true" > /usr/local/etc/nfc/libnfc.conf


# check if need to add blacklist file config


sudo apt update
sudo apt upgrade
sudo chmod +x mikai.AppImage

sudo ./mikai.AppImage