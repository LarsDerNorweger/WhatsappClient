import sys

path = sys.argv[1]
print(path)
file = open(path+"/Schreibtisch/Whatsapp.desktop","w")
file.write("[Desktop Entry]\n")
file.write("Type=Application\n")
file.write("Name=Whatsapp\n")
file.write("Exec=python3 {}/Whatsapp/main.py\n".format(path))
file.write("Icon={}/Whatsapp/Icon.png".format(path))