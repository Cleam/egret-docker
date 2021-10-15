#!/bin/sh

V=$1
VER=${V:-master}
VER2=${V:-latest}

echo "BUILD VERSION: $VER"

docker build --build-arg VERSION="v$VER" -t cleam/egret:"$VER2" .

# docker run --rm cleam/egret:5.2.32 info
# 等价于
# egret info
