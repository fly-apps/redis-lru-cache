#!/bin/sh
set -e

sysctl vm.overcommit_memory=1
sysctl net.core.somaxconn=1024
redis-server --requirepass $REDIS_PASSWORD --bind 0.0.0.0 --dir /data/ --save "" --maxmemory-policy allkeys-lfu --maxmemory 500mb
