#!/bin/sh

#export PORT=/dev/tty.usbserial-ftCEJFC9
#export PORT=COM4
export PORT=/dev/ttyUSB0
export PROG=avrispv2
export BLNAME=./Studio6_ATmega_Output/boot2_m162_v2.9M.08.hex

# From AD-8x:
export DEVICE=ATMEGA162
        export LFUSE=0xBF
        export HFUSE=0x98
        export EFUSE=0xFB
        export LOCK=0x0C
        export FWNAME=AD-8x/AD8x-v3.03.hex

avrdude -u -p ${DEVICE} -P ${PORT} -c ${PROG} -e -U hfuse:w:${HFUSE}:m -U lfuse:w:${LFUSE}:m -U efuse:w:${EFUSE}:m -U flash:w:${BLNAME}:a -U lock:w:${LOCK}:m


