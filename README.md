# elementaryOS-lockscreen-bgreplacer

This script is meant to be used in Elementary OS 6 Odin. You must be root user in order for it to work. You need an image called texture.png inside your Pictures folder.

## What do you need

* gnome-settings-daemon >= 3.27
* libaccountsservice-dev
* libgdk-pixbuf2.0-dev
* libgranite-dev >= 5.5.0
* libgtk-3-dev
* libhandy-1-dev >= 0.90.0
* liblightdm-gobject-1-dev
* libmutter
* libwingpanel-2.0-dev
* libx11-dev
* meson
* valac
* git

To install dependencies:

```
sudo apt install git
sudo apt install -y gnome-settings-daemon libaccountsservice-dev libgdk-pixbuf2.0-dev libgranite-dev libgtk-3-dev libhandy-1-dev liblightdm-gobject-1-dev libmutter-6-dev libwingpanel-dev libx11-dev meson valac
``` 

### You need to put any png image called "texture.png" (with your desired resolution) in /home/your_username (or "$SUDO_USER")/Pictures, otherwise this won't work!

## Clone the repository

Open a terminal and run the following git command:

```
git clone https://github.com/Blackmanx/elementaryOS-lockscreen-bgreplacer
```

## Become root user

```
sudo -i
cd /home/"$SUDO_USER"/Downloads/elementaryOS-lockscreen-bgreplacer
```

(Or whichever path in which the script is located)

## Run script

```
bash background.sh
```

Restart and done.
