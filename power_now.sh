cat /sys/class/power_supply/BAT*/voltage_now /sys/class/power_supply/BAT*/current_now | xargs | awk '{print $1*$2/1e12 " W"}'
