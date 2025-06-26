#!/bin/bash

echo "[sysbench.sh] measuring CPU temperature before test:"

for i in {1..15}
do
  temp=$(vcgencmd measure_temp)
  echo "[sysbench.sh] $temp"
  sleep 1
done

echo "[sysbench.sh] running CPU benchmark with 4 threads for 60 seconds..."

sysbench cpu --threads=4 --time=60 run

echo "[sysbench.sh] measuring CPU temperature after test:"

for i in {1..15}
do
  temp=$(vcgencmd measure_temp)
  echo "[sysbench.sh] $temp"
  sleep 1
done

echo "[sysbench.sh] finished benchmark and temperature measurements."
