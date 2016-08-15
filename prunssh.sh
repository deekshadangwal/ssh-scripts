#!/bin/bash

for f in `cat servers.txt`;
do
  echo "This is $f";
  ssh -o StrictHostKeyChecking=no $f './dosomething.sh' &
done
wait
