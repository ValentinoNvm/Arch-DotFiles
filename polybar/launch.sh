

polybar-msg cmd quit


while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on DP-0
MONITOR=DP-0 polybar mybar 2>&1 | tee -a /tmp/polybar-HDMI-0.log & disown 

# Launch Polybar on HDMI-0
MONITOR=HDMI-0 polybar mybar 2>&1 | tee -a /tmp/polybar-HDMI-0.log & disown

echo "Bars launched on DP-0 and HDMI-0"
