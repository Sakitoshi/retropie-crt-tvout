if [ -f "/opt/retropie/configs/$1/480i.txt" ]; then interlaced=$(tr -d "\r" < "/opt/retropie/configs/$1/480i.txt"); fi > /dev/null
if [ -f "/opt/retropie/configs/ports/$1/480i.txt" ]; then interlaced=$(tr -d "\r" < "/opt/retropie/configs/ports/$1/480i.txt"); fi > /dev/null
if [ ! -s "/opt/retropie/configs/$1/480i.txt" && ! -s "/opt/retropie/configs/ports/$1/480i.txt" ] || [ -z "$interlaced" ]; then interlaced="none"; fi > /dev/null
if tvservice -s | grep NTSC && ! echo "$3" | grep -wi "$interlaced" && ! echo "$interlaced" | grep -wi "all"; then tvservice -c "NTSC 4:3 P"; fbset -depth 8 -yres 400; fbset -depth 32; fi > /dev/null
