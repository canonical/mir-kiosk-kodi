#!/usr/bin/env bash

for PLUG in alsa avahi-observe hardware-observe locale-control mount-observe network-observe removable-media shutdown system-observe wayland; do sudo snap connect mir-kiosk-kodi:${PLUG}; done
