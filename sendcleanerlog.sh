#!/bin/bash -f
export PATH="$PATH:/usr/local/bin"

#sleep 120
gsed -n -e '/INFO:root:                Summary -- Script Completed/,/INFO:root:  Rescanned Sections/p' ~/plexcleaner.log | prowlnotify -a plexcleaner -
