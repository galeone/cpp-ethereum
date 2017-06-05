#!/usr/bin/bash

sudo nvidia-docker run --rm -v $(pwd)/env:/env galeone/cpp-ethereum -S eu1.ethermine.org:4444 -O 0x14c8dd9534cc6d88a305f6579398c8c71226ea72.dl1
