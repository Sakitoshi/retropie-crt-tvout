if [ -s "/opt/retropie/configs/$1/480i.txt" ]; then interlaced=$(tr -d "\r" < "/opt/retropie/configs/$1/480i.txt"); else interlaced="none"; fi > /dev/null
if [[ "tvservice -s | grep NTSC" ]] && ! echo "$3" | grep -i "$interlaced"; then tvservice -c "NTSC 4:3 P"; fbset -depth 8; fbset -depth 32; fi > /dev/null
