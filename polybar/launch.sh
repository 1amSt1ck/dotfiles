killall -q polybar

echo "\n---\n" | tee -a /tmp/polybar1.log /tmp/polybar2.log

polybar mybar1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar mybar2 2>&1 | tee -a /tmp/polybar2.log & disown
