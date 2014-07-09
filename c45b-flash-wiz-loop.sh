#!/bin/bash

export TOTAL=0
export SUCCESS=0
export FAIL=0

while (true)
do
	. ./c45b-flash-wiz.sh   2>&1
	RESULT=${PIPESTATUS[0]}
	echo "RESULT: $RESULT"
	if [ $RESULT -eq 0 ]; then
		echo "RESULT: SUCCESS"
		let SUCCESS=$SUCCESS+1
	else
		echo "RESULT: FAIL"
		let FAIL=$FAIL+1
	fi
	let TOTAL=$TOTAL+1
	echo "# SUCCESS: $SUCCESS   FAIL: $FAIL   TOTAL: $TOTAL"
done


# ----------------------
