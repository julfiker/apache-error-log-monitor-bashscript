# apache-error-log-monitor-bashscript
To monitor apache error log for the project. 

If you want to sent recent error log through just you add following line

```
url = "http://exampleweb.com"
curl -X POST -H 'Content-type: application/json' \
  --data "{'text':  \"Error has been occurred, Please take a look in following \n $(echo $line | sed "s/\"/'/g")\"}" \
  $url 

```  
Befor use this you need to install following package into the system
Install into the ubuntu  

```
sudo apt-get udpate
sudo apt-get install inotify-tools
```
Also you need to change the script permission. make it executable. you can use following command
```
sudo chmod +x script.sh
```
Then you can use this script in command line user interface. 
Open terminal then run following command

```
sh script.sh /var/log/apache/error.log

```

You need to pass full path of logs file in aguments    

Thanks you
If you need any help on this regards,
Please send an email to mail.julfiker@gmail.com
