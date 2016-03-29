#!/bin/bash
#contains just the changes to k8s config-defaults for aws k8s_home/cluster/aws/config-defaults.sh
ZONE=${KUBE_AWS_ZONE:-us-west-1a}
NUM_NODES=${NUM_NODES:-4}

# Dynamically set node sizes so that Heapster has enough space to run
if [[ -z ${NODE_SIZE} ]]; then
  if (( ${NUM_NODES} < 50 )); then
    #NODE_SIZE="t2.micro"
    NODE_SIZE="t2.medium"
  elif (( ${NUM_NODES} < 150 )); then
    #NODE_SIZE="t2.small"
    NODE_SIZE="t2.medium"
  else
    NODE_SIZE="t2.medium"
  fi
fi
