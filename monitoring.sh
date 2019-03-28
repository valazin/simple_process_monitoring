duration_time_secs=86400
wait_time_secs=10
proc_name=the-best-program

n=$((duration_time_secs / wait_time_secs))
for i in $(seq 1 "$n");
do 
  ps -p $(pgrep $"proc-name") -o pcpu= -o rss= -o vsz= -o pmem= | tr ' ' ';' ;
  sleep "$wait_time_secs"
done
