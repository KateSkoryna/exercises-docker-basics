#!/bin/bash
while true
do
  echo "Input website:"
  echo "Searching.."
  sleep 1;
  curl http://$1;
done
