#!/usr/bin/env bash

if [ ! -e /env/ethmine ]; then
    mkdir /env
    cp /cpp-ethereum/build/ethminer/ethminer /env
fi

cd /env

export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

/env/ethminer --farm-recheck 200 -U "$@"
