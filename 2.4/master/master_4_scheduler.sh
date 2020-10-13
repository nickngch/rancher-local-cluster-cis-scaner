info "1.4 - Scheduler"

check_1_4_1="1.4.1  - Ensure that the --profiling argument is set to false"
profiling2=$(docker inspect kube-scheduler | jq -e '.[0].Args[] | match("--profiling=false").string');
if [ $profiling2 = \"--profiling=false\" ]; then
  	pass "$check_1_4_1"
else
  	warn "$check_1_4_1"
fi

check_1_4_2="1.4.2  - Ensure that the --bind-address argument is set to 127.0.0.1"
address=$(docker inspect kube-scheduler | jq -e '.[0].Args[] | match("--bind-address=127\\.0\\.0\\.1").string')
if [ "$address" = \"--bind-address=127.0.0.1\" ]; then
  	pass "$check_1_4_2"
else
  	warn "$check_1_4_2"
fi
