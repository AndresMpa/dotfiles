#!/bin/bash

pkill safeeyes

pkill redshift

safeeyes &
2>/dev/null
redshift -P -O 3000 &
2>/dev/null
