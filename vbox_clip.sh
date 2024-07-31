#!/bin/bash
for line in $(ps aux | grep 'VBoxClient --clipboard' | grep -v grep | cut -d " " -f 10)
do
kill -9 $line
done
sudo /usr/bin/VBoxClient --clipboard