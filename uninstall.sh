#!/bin/bash

echo "Uninstall Whatsapp Client"

if [ "$EUID" -ne 0 ]
then 
path=/home/$USER/Whatsapp 
start=/home/$USER/Schreibtisch/Whatsapp.desktop
else
path=/home/$SUDO_USER/Whatsapp 
start=/home/$SUDO_USER/Schreibtisch/Whatsapp.desktop
fi

rm -R $path
rm $start

echo "Successfull remove"