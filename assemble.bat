@echo off
rgbasm -o "coeur.obj" main.s
rgblink -m "coeur.map" -n "coeur.sym" -o "coeur.gb" "coeur.obj"
rgbfix -s -v -j -l 0x33 -r 0 -p 0 -t "COEUR <3" "coeur.gb"
pause