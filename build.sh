#!/bin/sh
# This is what I did to build and install this rc reimplimentation on arch:
# https://github.com/rakitzis/rc
exit 0 # comment out to do the thing.
sudo pacman -Sy autoconf automake pkg-config
aclocal
autoconf
autoheader
automake --add-missing
./configure --with-edit=readline
sed -i 's#\(extern int fprint.*$\)#// \1#' rc.h
make
# to install: sudo make install
