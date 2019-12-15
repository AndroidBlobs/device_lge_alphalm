#!/vendor/bin/sh

PKM_CMD=$1

if [ $PKM_CMD == "1" ] || [ $PKM_CMD == "2" ]; then
    exit 0
#echo $PKM_CMD > /sys/class/lge_pkm/pkm_ctrl/pkm_command
fi

