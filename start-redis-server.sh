#!/bin/sh
set -e

MAXMEMORY=${FLY_VM_MEMORY_MB:-512}
MAXMEMORY="$(((($FLY_VM_MEMORY_MB*10)-$FLY_VM_MEMORY_MB)/10))"

sysctl vm.overcommit_memory=1
sysctl net.core.somaxconn=1024
redis-server --requirepass $REDIS_PASSWORD --bind 0.0.0.0 --dir /data/ --save "" --maxmemory-policy allkeys-lfu --maxmemory "${MAXMEMORY}mb"
