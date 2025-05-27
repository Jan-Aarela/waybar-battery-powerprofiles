#/bin/bash

# Get battery information and power profile.
BATTERY=$(upower -e | grep 'BAT')
PERCENT=$(upower -i "$BATTERY" | awk '/percentage/ {print $2}' | tr -d '%')
STATE=$(upower -i "$BATTERY" | awk '/state/ {print $2}' | tr -d '%')
PROFILE=$(powerprofilesctl get)

# Case match profile.
case "$PROFILE" in
    performance) PROFILE=$" 󱀚"
        ;;
    balanced) PROFILE=$" "
        ;;
    power-saver) PROFILE=$" "
        ;;
esac

# Set class.
if [[ $STATE == "charging" ]];then
    CLASS=$"charging"
elif [[ $PERCENT -le 10  ]]; then
    CLASS=$"critical"
elif [[ $PERCENT -le 20 ]]; then
    CLASS=$"warning"
else
    CLASS=$""
fi

# Export as json.
printf '{"text": "%s", "class": "%s"}\n' "$PROFILE $PERCENT" "$CLASS"
