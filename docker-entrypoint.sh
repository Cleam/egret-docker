#!/bin/sh
set -e

# 如果未传参传入的不是命令（command） -z 检测字符串长度是否为0，为0返回 true。
if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- egret "$@"
fi

exec "$@"
