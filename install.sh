
if [ "$EUID" -ne 0 ]
then echo "Please run as root">&2
    exit
fi

path=/home/$SUDO_USER/Whatsapp 
start=/home/$SUDO_USER/Schreibtisch/Whatsapp.desktop

# install dependecies

sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-3.0 gir1.2-webkit2-4.0

# Copy Files
mkdir $path
cp ./src/main.py $path
cp ./src/Icon.png $path
chown -R $SUDO_USER $path

# create starter
touch $start
python3 ./src/install.py /home/$SUDO_USER

chown $SUDO_USER $start