#!/usr/bin/env bash

choice=$(printf "sleep\nhibernate\nshutdown\nreboot\n" | rofi -dmenu -i -p "power" -lines 2)

case "$choice" in
  sleep)
    systemctl suspend
    ;;
  hibernate)
    systemctl hibernate
    ;;
  shutdown)
    systemctl poweroff
    ;;
  reboot)
    systemctl reboot
    ;;
esac
