#!/usr/bin/env bash

set -x

mkdir -p $XDG_RUNTIME_DIR -m 700

while ! ln -sf $(dirname $XDG_RUNTIME_DIR)/wayland-0 $XDG_RUNTIME_DIR; do sleep 4; done

WINDOWING=wayland exec ${SNAP}/usr/bin/kodi $0