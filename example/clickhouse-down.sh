#!/bin/bash

# This is an example script that stops clickhouse

set -e

script_root=`dirname "${BASH_SOURCE}"`
source $script_root/env.sh

echo "Remove ClickHouse ConfigMap"
$KUBECTL $KUBECTL_OPTIONS delete configMap clickhouse-config

echo "Stopping ClickHouse replicationcontroller..."
$KUBECTL $KUBECTL_OPTIONS delete replicationcontroller clickhouse

echo "Deleting ClickHouse service..."
#$KUBECTL $KUBECTL_OPTIONS delete service clickhouse
