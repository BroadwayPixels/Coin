
Debian
====================
This directory contains files used to package broadwayd/broadway-qt
for Debian-based Linux systems. If you compile broadwayd/broadway-qt yourself, there are some useful files here.

## broadway: URI support ##


broadway-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install broadway-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your broadway-qt binary to `/usr/bin`
and the `../../share/pixmaps/broadway128.png` to `/usr/share/pixmaps`

broadway-qt.protocol (KDE)

