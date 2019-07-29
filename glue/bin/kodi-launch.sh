#!/usr/bin/env bash

set -x

mkdir -p $XDG_RUNTIME_DIR -m 700

real_wayland=$(dirname $XDG_RUNTIME_DIR)/wayland-0
while [ ! -O ${real_wayland} ]; do echo waiting for Wayland socket; sleep 4; done

ln -sf "${real_wayland}" $XDG_RUNTIME_DIR

WINDOWING=wayland exec ${SNAP}/usr/bin/kodi $0