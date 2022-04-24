#!/bin/bash
if [ "$EUID" -ne 0 ]
then echo "Please run as root">&2
    exit
fi

echo "Install Whatsapp Client"
path=/home/$SUDO_USER/Whatsapp 
start=/home/$SUDO_USER/Schreibtisch/Whatsapp.desktop

# install dependecies

sudo apt install python3-pip
pip install pywebview

# Copy Files
mkdir $path
cp ./src/main.py $path
cp ./src/Icon.png $path
chown -R $SUDO_USER $path

# create starter
touch $start
python3 ./src/install.py /home/$SUDO_USER

chown $SUDO_USER $start

chmod 700 $path/main.py
chmod 700 $start
echo "Whatsapp Client Successfull installed"