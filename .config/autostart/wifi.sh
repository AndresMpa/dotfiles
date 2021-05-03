#!/bin/sh

# kill nm-applet here to see the icon
# this a process that is a nunnecessary
# process on your PC so you can comment
# this line to save processes
killall nm-applet

# We send nm-applet error to /dev/null
# basically because we do not need to
# see this, what we are doing whit this
# is just omitting the warnings that
# nm-applet make
nm-applet    &> /dev/null 2> /dev/null &

#stalonetray  > /dev/null 2>/dev/null

# kill nm-applet here to not see the icon
# this optimize the process on your PC
#killall nm-applet
