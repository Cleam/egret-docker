#!/bin/sh

set -e

VER=${1:-master}
VER2=${1:-latest}

echo "BUILD VERSION: $VER"
echo "TAGNAME: $VER2"

echo ""
echo "=== BUILD START ==="
docker build --build-arg VERSION="v$VER" -t cleam/egret:"$VER2" .
echo "=== BUILD SUCCESS ==="

echo ""
echo "=== TEST START ==="
# 等价于 egret info
docker run --rm cleam/egret:"$VER2" egret info
echo "=== TEST SUCCESS ==="
