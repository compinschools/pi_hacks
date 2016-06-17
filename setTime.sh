#! /bin/sh
# /etc/init.d/setTime.sh

### BEGIN INIT INFO
# Provides:          setTime.sh
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Simple set time script for pi over http
# Description:
### END INIT INFO

# If you want a command to always run, put it here

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting setTime"
    # uncomment and enter your own proxy details
    # export http_proxy=http://10.117.96.43:8080/
    sudo date -s "$(curl -sD - google.com | grep '^Date:' | cut -d' ' -f3-6)Z"
    ;;
  stop)
    echo "Stopping setTime"
    # kill application you want to stop
    
    ;;
  *)
    echo "Usage: /etc/init.d/noip {start|stop}"
    exit 1
    ;;
esac

:

