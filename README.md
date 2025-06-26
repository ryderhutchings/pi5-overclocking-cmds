**Make sure to do the following:**

`sudo apt install bc`

And for each bash script:

`chmod +x <filename.sh>`

Turn off CPU governor temporarily by running:

```bash
echo performance | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
```
Re-enable it by running:
```bash
echo ondemand | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
```
