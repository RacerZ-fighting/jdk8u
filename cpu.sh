pid=$(pgrep -f "vuln-springboot")
if [ -n "$pid" ]; then
    timestamp=$(($(date +%s%N)/1000000))
    usage=$(top -d 0.2 -n 1 -o -PID -b -p $pid)
    echo "====="
    echo "[flag]"+$timestamp
    echo "$usage"
fi
