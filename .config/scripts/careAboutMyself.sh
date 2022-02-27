#!/bin/bash

pkill safeeyes

pkill redshift

safeeyes &
2>/dev/null
redshift &
2>/dev/null
