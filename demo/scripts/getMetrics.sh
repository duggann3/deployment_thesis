#!/bin/bash

while :
do 
  echo `date '+%Y/%m/%d-%H:%M:%S'`,`curl $1 -s -w ",%{http_code}"`
  sleep 1
done
