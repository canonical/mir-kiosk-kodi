#!/bin/sh

set -e

rm -f mir-kiosk-kodi_*_i386.snap
git merge origin/master
snapcraft remote-build --launchpad-accept-public-upload
snapcraft upload mir-kiosk-kodi_*_i386.snap --release edge