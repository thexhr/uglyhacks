#!/bin/sh

state=`synclient -l | grep -i touchpadoff | cut -d '=' -f 2 | cut -d ' ' -f 2`

if [ "$state" -eq 1 ]; then
	synclient TouchPadOff=0
else
	synclient TouchPadOff=1
fi

exit $?
