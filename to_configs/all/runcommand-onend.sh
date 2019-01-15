if tvservice -s | grep NTSC; then tvservice -c "NTSC 4:3"; fbset -depth 8 -yres 480; fbset -depth 32; fi > /dev/null
