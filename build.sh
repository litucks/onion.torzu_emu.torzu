#! /bin/sh

rm -rf build export .flatpak-builder &&
flatpak-builder build onion.torzu_emu.torzu.json &&
flatpak build-export export build &&
exec flatpak build-bundle export torzu.flatpak onion.torzu_emu.torzu --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo
