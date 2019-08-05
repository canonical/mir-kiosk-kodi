#!/bin/sh

set -x

if grep -q snap_core= /proc/cmdline || [ "$(snapctl get daemon)" = "true" ]
then exec "$(dirname "$0")/kodi-launch.sh" "$@"
fi
