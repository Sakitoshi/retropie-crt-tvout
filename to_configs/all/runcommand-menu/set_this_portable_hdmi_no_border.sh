if [ "$1" = "atarilynx" ] || [ "$1" = "gamegear" ] || [ "$1" = "gb" ] || [ "$1" = "gba" ] || [ "$1" = "gbc" ] || [ "$1" = "ngp" ] || [ "$1" = "ngpc" ]; then echo pixelperfect > /opt/retropie/configs/$1/default; cp /opt/retropie/configs/$1/retroarch_hdmi.cfg /opt/retropie/configs/$1/retroarch.cfg; fi > /dev/null
exit 1