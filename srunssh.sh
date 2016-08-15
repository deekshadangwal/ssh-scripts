#!/bin/bash

# if you want to access only a range of servers (say from line 3 to 15 of servers.txt):
# for f in `cat servers.txt | sed '3,15!d'` ; 
for f in `cat servers.txt`;
do
  echo "This is $f";
  ssh -o StrictHostKeyChecking=no $f './dosomething.sh' 
done
