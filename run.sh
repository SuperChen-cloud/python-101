#!/bin/bash
# 运行 Python 文件的快捷脚本
# 用法：./run.sh lesson01/hello.py
#
# 这个脚本用的是 DSH 自带的 Python 3.12，
# 所以你不用自己安装任何东西就能跑。
# 等你装好官方 Python 之后，也可以直接用 python3 命令。

DIR="$(cd "$(dirname "$0")" && pwd)"
PY="/Users/chenjinghan/.dsh/dsh-runtimes/dsh-primary-runtime/dependencies/python/bin/python3"

if [ ! -x "$PY" ]; then
  echo "找不到内置 Python，请改用系统里的 python3 命令。"
  exit 1
fi

exec "$PY" "$@"
