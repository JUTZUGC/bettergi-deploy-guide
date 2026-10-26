# BetterGI 一键安装脚本（第三方指南）——按官方文档封装
# 官方文档：https://www.bettergi.com/quickstart.html
# 更新日期：2026-10-26
# 类型：binary
$ErrorActionPreference = 'Stop'
Set-Location -Path $PSScriptRoot

if (-not (Get-Command curl.exe -ErrorAction SilentlyContinue)) { throw '需要先安装 curl（Windows 10+ 自带 curl.exe）' }

New-Item -ItemType Directory -Force -Path .download | Out-Null
Set-Location -Path .download

$exe = 'BetterGI.Install.0.66.0.exe'
curl.exe -L --fail -o $exe "https://github.com/babalae/better-genshin-impact/releases/download/0.66.0/$exe"
if ((Get-FileHash $exe -Algorithm SHA256).Hash.ToLower() -ne 'e00c7fa49f9adb8b462525221b01b46ecc2f91681e7a154714f1c47575f033cf') { throw 'SHA256 校验失败，请重新下载' }
Write-Host 'SHA256 校验通过'
Start-Process -FilePath (Join-Path $PWD $exe)

Write-Host ''

Write-Host '安装完成：以管理员身份启动 BetterGI，在「启动」页选截图方式后点启动；游戏保持 16:9 窗口化'
Write-Host '若结果异常或需要改配置，请参考官方文档：https://www.bettergi.com/quickstart.html'
