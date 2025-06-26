#!/bin/bash

echo "[measure-temp.sh] measuring CPU temperature:"

for i in {1..15}
do
  temp=$(vcgencmd measure_temp)
  echo "[measure-temp.sh] $temp"
  sleep 1
done

echo "[measure-temp.sh] finished measuring temperature."
