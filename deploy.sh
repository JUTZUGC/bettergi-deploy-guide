#!/usr/bin/env bash
set -euo pipefail
# BetterGI 一键安装脚本（第三方指南）——按官方文档封装
# 官方文档：https://www.bettergi.com/quickstart.html
# 更新日期：2026-10-26
# 类型：binary
cd "$(dirname "${BASH_SOURCE[0]}")"

command -v curl >/dev/null 2>&1 || { echo "需要先安装 curl"; exit 1; }

mkdir -p .download
cd .download

echo "BetterGI 仅支持 Windows 10/11 64 位，macOS / Linux 无法运行"; exit 1

echo ""

echo "安装完成：以管理员身份启动 BetterGI，在「启动」页选截图方式后点启动；游戏保持 16:9 窗口化"
echo "若结果异常或需要改配置，请参考官方文档：https://www.bettergi.com/quickstart.html"
