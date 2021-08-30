#!/bin/bash

while :
do
  #echo `date '+%Y/%m/%d-%H:%M:%S'`,`curl $1 -s -w ",%{http_code}"`,`kubectl describe svc $2 | grep Endpoints | awk '{print $2}'`
  echo `date '+%Y/%m/%d-%H:%M:%S'`,`curl $1 -s -w ",%{http_code}"`,`kubectl get po -o wide | grep -v IP | awk '{print $6}' | tr '\n' ',' | sed 's/.$//'`
  sleep 0.5
done
