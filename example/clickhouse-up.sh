#!/bin/bash

# This is an example script that starts clickhouse
set -e

script_root=`dirname "${BASH_SOURCE}"`
source $script_root/env.sh

echo "Creating ClickHouse service, configmap, and replicationcontroller..."

echo "Create ClickHouse ConfigMap"
$KUBECTL $KUBECTL_OPTIONS create -f clickhouse-config.yaml

echo "create ClickHouse ReplicationController..."
$KUBECTL $KUBECTL_OPTIONS create -f clickhouse-controller-template.yaml 

echo "create ClickHouse Service..."
$KUBECTL $KUBECTL_OPTIONS create -f clickhouse-service-template.yaml

echo "create success"
