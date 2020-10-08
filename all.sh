#!/bin/sh
# ------------------------------------------------------------------------------
# Rancher Hardening CIS benchmark
#
# nickngch90
#
# ------------------------------------------------------------------------------

CIS_APISERVER_CMD=${CIS_APISERVER_CMD:-kube-apiserver}
CIS_MANAGER_CMD=${CIS_MANAGER_CMD:-kube-controller-manager}
CIS_SCHEDULER_CMD=${CIS_SCHEDULER_CMD:-kube-scheduler}
CIS_ETCD_CMD=${CIS_ETCD_CMD:-etcd}

# Load dependencies
. ./helper.sh

ver=$1
if [ -z "$1" ]; then
    warn "usage: ./all.sh version"
	exit
fi
# Check for required program(s)
req_progs='awk grep pgrep sed jq'
for p in $req_progs; do
  command -v "$p" >/dev/null 2>&1 || { printf "%s command not found.\n" "$p"; exit 1; }
done

# Load all the tests from 2.4/ and run them
main () {
  info "1 - Master Node Security Configuration"

  for test in $ver/master/master_*.sh
  do
     . ./"$test"
  done
  for test in $ver/worker/worker_*.sh
  do
    . ./"$test"
  done
}

main "$@"
