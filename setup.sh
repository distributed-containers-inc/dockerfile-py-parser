#!/usr/bin/env bash

set -eu -o pipefail

mkdir -p build
for GOOS in linux; do
    for GOARCH in amd64 "386"; do
        export GOOS
        export GOARCH
        export CGO_ENABLED=1
        echo "Compiling for $GOOS $GOARCH"
        go build -o dockerfileparser/"bridge-$GOOS-$GOARCH.so" \
            -buildmode=c-shared \
            bridge.go
    done
done

rm dockerfileparser/*.h

rm -rf build dist *.egg-info
python3 setup.py bdist_wheel

