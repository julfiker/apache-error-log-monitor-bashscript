#!/bin/sh
p=$1
if [ ! -f $p ]; then
    echo "The file not exists!"
    exit 1
fi

error_log() {
  while inotifywait -e modify $p; do
    line=$(tail -n1 $p | cut -c 81-);
    echo "$line"    
  done
}
error_log
