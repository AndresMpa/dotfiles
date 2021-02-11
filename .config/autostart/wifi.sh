 #!/bin/sh
 nm-applet    > /dev/null 2>/dev/null &
 stalonetray  > /dev/null 2>/dev/null
 killall nm-applet
