#!/bin/sh

AUR_CACHE_DIR=$HOME/.cache/paru/clone
AUR_CACHE_REMOVED="$(find "$AUR_CACHE_DIR" -maxdepth 1 -type d | awk '{ print "-c " $1 }' | tail -n +2)"
AUR_REMOVED=$(/usr/bin/paccache -ruvk0 $AUR_CACHE_REMOVED | sed '/\.cache/!d' | cut -d \' -f2 | rev | cut -d / -f2- | rev)
[ -z "AUR_REMOVED" ] || rm -rf $AUR_REMOVED

AUR_CACHE="$(find "$AUR_CACHE_DIR" -maxdepth 1 -type d | awk '{ print "-c " $1 }' | tail -n +2)"
/usr/bin/paccache -ruk1
/usr/bin/paccache -rk2 -c /var/cache/pacman/pkg $AUR_CACHE
