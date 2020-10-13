# Rancher Local Cluster CIS Scanner

The script is created based on [Rancher security benchmark 2.4](https://rancher.com/docs/rancher/v2.x/en/security/rancher-2.4/benchmark-2.4/).

Since CIS Scanner on Rancher v2.4 doesn't support scanning on local cluster, this script is to help user to automating the task.

## Pre-requisites:
- jq (This probably the only one require to install manually)
- grep
- awk
- sed
- tr
- cut

## Usage

- sudo bash ./all.sh 2.4 #for all roles node(Control Plane + etcd + worker)

- sudo bash ./master.sh 2.4 #for master node

- sudo bash ./worker.sh 2.4 #for worker node

## Modified from
- https://github.com/neuvector/kubernetes-cis-benchmark
