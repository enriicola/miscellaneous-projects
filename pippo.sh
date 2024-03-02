sudo apt update
sudo apt upgrade

sudo apt install fuse
sudo apt install neofetch
sudo apt install libnfc*
sudo apt install libusb-0.1
sudo apt install libtool-bin

mkdir /usr/local/etc/nfc
echo "allow_intrusive_scan = true" > /usr/local/etc/nfc/libnfc.conf


# check if need to add blacklist file config


sudo apt update
sudo apt upgrade
sudo chmod +x mikai.AppImage

./mikai.AppImage