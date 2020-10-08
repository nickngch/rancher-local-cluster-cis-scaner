# Rancher Hardening Benchmark

The script is created based on [Rancher security benchmark 2.4](https://rancher.com/docs/rancher/v2.x/en/security/rancher-2.4/benchmark-2.4/).

## Pre-requisites:
- jq
- grep
- awk
- sed

## Usage

- sudo bash ./all.sh 2.4

- sudo bash ./master.sh 2.4 #for master node

- sudo bash ./worker.sh 2.4 #for worker node

## Modified from
- https://github.com/neuvector/kubernetes-cis-benchmark
