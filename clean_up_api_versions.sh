#!/bin/bash

# fix references to deprecated API (sincle Kubernetes 1.16)
# note run from oom/kubernetes

for item in $(grep -ir apps/v1beta1 * | grep apiVersion | cut -d ":" -f 1) ; do sed -i "s/apiVersion:[[:space:]]*apps\/v1beta1/apiVersion: apps\/v1/g" $item ; done

for item in $(grep -ir extensions/v1beta1 * | grep apiVersion | cut -d ":" -f 1) ; do sed -i "s/apiVersion:[[:space:]]*extensions\/v1beta1/apiVersion: apps\/v1/g" $item ; done


