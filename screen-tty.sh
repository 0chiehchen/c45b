#!/bin/sh

echo "^A-K to Kill Screen and Quit"
echo "^A-I for info"
echo ""

read -p "Press Enter to continue..."

screen /dev/modem 9600,cs8,ixon,ixoff

