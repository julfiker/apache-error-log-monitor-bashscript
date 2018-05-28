#!/bin/sh
p=$1
if [ ! -f $p ]; then
    echo "The file not exists!"
    exit 1
fi

error_log() {
  url="https://hooks.slack.com/services/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"
  while inotifywait -e modify $p; do
    line=$(tail -n1 $p | cut -c 81-);
    echo "$line"    
  done
}
error_log
