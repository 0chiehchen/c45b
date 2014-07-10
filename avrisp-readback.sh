#!/bin/sh

avrdude -c stk500v2 -p atmega162 -P /dev/ttyUSB0 -u -U flash:r:READBACK.hex:i

