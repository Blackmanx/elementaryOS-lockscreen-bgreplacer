#!/bin/bash

if [[ -d /tmp/greeter ]]
then
	echo "/greeter exists within /tmp/, deleting."
	rm -rf /tmp/greeter
fi
# Clones greeter into tmp
cd /tmp/
git clone https://github.com/elementary/greeter.git
cd /tmp/greeter/data

# Deletes default grey background tile.
rm -rf texture.png

# Blur image
convert /home/"$SUDO_USER"/Pictures/texture.png -filter Gaussian -blur 0x6 /home/"$SUDO_USER"/Pictures/texture_blur.png

# Copies new image used for background.
cp /home/"$SUDO_USER"/Pictures/texture_blur.png /tmp/greeter/data/texture.png
rm -rf /home/"$SUDO_USER"/Pictures/texture_blur.png
cd /tmp/greeter/compositor

# Settings file used in greeter to indicate which file it is using.
filename=SystemBackground.vala

# Replace path to new texture's path.
sed -i "s/resource\:\/\/\/io\/elementary\/desktop\/gala\/texture\.png/resource\:\/\/\/io\/elementary\/greeter\/texture\.png/" $filename

cd /tmp/greeter

# Build greeter
meson _build --prefix=/usr
ninja install -C _build
