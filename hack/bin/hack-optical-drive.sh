#!/bin/sh

sudo sed --in-place "s~^}$~owner /var/lib/snapd/hostfs/media/*/DVDVolume/{,**} r,\\n}~" /var/lib/snapd/apparmor/profiles/snap.mir-kiosk-kodi.mir-kiosk-kodi
sudo apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap.mir-kiosk-kodi.mir-kiosk-kodi
