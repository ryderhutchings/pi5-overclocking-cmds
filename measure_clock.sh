#!/bin/bash

echo "[measure-cpu.sh] measuring CPU frequency:"

for i in {1..15}
do
  freq_hz=$(vcgencmd measure_clock arm | cut -d '=' -f2)
  freq_mhz=$((freq_hz / 1000000))
  freq_ghz=$(echo "scale=2; $freq_mhz / 1000" | bc)
  echo "[measure-cpu.sh] ${freq_hz} hz / ${freq_mhz} mhz / ${freq_ghz} ghz"
  sleep 1
done

echo "[measure-cpu.sh] finished measuring CPU frequency."
