#!/bin/bash

pkill sunsetr
pkill hyprsunset

sleep 3

GEO=$(curl -s --max-time 5 http://ip-api.com)

if [ -n "$GEO" ] && echo "$GEO" | jq -e '.status == "success"' >/dev/null 2>&1; then
  LAT=$(echo "$GEO" | jq -r '.lat')
  LON=$(echo "$GEO" | jq -r '.lon')
else
  # Prague latitude and longitude, change to whatever you want
  LAT="50.07"
  LON="	14.42"
fi

cat <<EOF >~/.config/sunsetr/sunsetr.toml
backend = "hyprsunset"
transition_mode = "geo"

smoothing = true
startup_duration = 0.5
shutdown_duration = 0.5
adaptive_interval = 1

night_temp = 1500
day_temp = 6500
night_gamma = 100
day_gamma = 100
update_interval = "auto"

transition_duration = 45

latitude = $LAT
longitude = $LON
EOF

setsid -f sunsetr
