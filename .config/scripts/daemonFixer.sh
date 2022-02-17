#!/bin/bash

FAILS=$(systemctl --failed | grep "failed")

if [[ -n $FAILS ]]; then
	systemctl reset-failed
else
	echo "No failures"
fi
