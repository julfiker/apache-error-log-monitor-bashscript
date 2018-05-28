# apache-error-log-monitor-bashscript
To monitor apache error log for the project. 

If you want to sent recent error log through just you add following line

```
url = "http://exampleweb.com"
curl -X POST -H 'Content-type: application/json' \
  --data "{'text':  \"Error has been occurred, Please take a look in following \n $(echo $line | sed "s/\"/'/g")\"}" \
  $url```

