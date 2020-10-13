# Rancher Local Cluster CIS Scanner

The script is created based on [Rancher security benchmark 2.4](https://rancher.com/docs/rancher/v2.x/en/security/rancher-2.4/benchmark-2.4/).

Since CIS Scanner on Rancher v2.4 doesn't support scanning on the local cluster, this script helps the user automate the task.

## Pre-requisites:
- jq (This probably the only one required to install manually)
- grep
- awk
- sed
- tr
- cut

## Usage
1. `git clone https://github.com/nickngch/rancher-local-cluster-cis-scanner.git`
2. Run the script on all nodes in the local cluster:
- `sudo bash ./all.sh 2.4` #for all roles node(Control Plane + etcd + worker), this should be the default command to execute the script


### Experimental
- `sudo bash ./master.sh 2.4` #for master node

- `sudo bash ./worker.sh 2.4` #for worker node

## Modified from
- https://github.com/neuvector/kubernetes-cis-benchmark
