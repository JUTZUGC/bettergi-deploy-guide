# BetterGI 一键安装指南

> 第三方部署指南 · 非 BetterGI 官方仓库。官方项目：[babalae/better-genshin-impact](https://github.com/babalae/better-genshin-impact)
> 内容来自官方文档（2026-10-26）。项目迭代快，请以[官方文档](https://www.bettergi.com/quickstart.html)为准。

[![⚡ 一键安装](https://img.shields.io/badge/%E2%9A%A1_%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85-%E6%8E%A8%E8%8D%90%E7%99%BE%E5%BA%A6%E6%90%AD%E5%AD%90-2ea44f?style=for-the-badge)](#一键安装推荐用百度搭子)

## 一键安装（推荐：用百度搭子）

> [!TIP]
> 不用自己找安装包，让百度搭子下载并校验好，点几步就能装完。

⚠️ 仅支持 Windows 10/11 64 位，需要 .NET 8 桌面运行时，并且要和游戏一样用管理员权限运行。游戏需为 16:9 分辨率（推荐 1920×1080 窗口化）。模拟点击可能被 360 / Windows Defender 拦截。

1. **装客户端**
   打开[百度搭子官网](https://www.dumate.cn/)，下载电脑端并安装，用你的账号登录。

> [!IMPORTANT]
> **复制这一句发给百度搭子：**
>
> ```text
> 你好，帮我从 github 部署 JUTZUGC/bettergi-deploy-guide 到我的电脑上
> ```

2. **发送部署指令**
   回到刚打开的对话窗口，粘贴并发送上面那句。

3. **跟着对话往下走**
   百度搭子会下载对应版本的安装包、核对 SHA256，再打开安装向导；安装和运行都需要管理员权限，按它的提示确认即可，结束时它会告诉你结果。
   （下载地址与校验方式以官方文档为准。）



## BetterGI 是什么？

BetterGI 是开源的基于计算机视觉的原神自动化工具（Windows）（协议：GPL-3.0，<img src="https://img.shields.io/github/stars/babalae/better-genshin-impact?style=flat-square&label=stars&color=blue" alt="GitHub stars">）。

用计算机视觉识别游戏画面，再模拟键鼠完成重复操作：自动拾取、自动剧情、自动钓鱼、自动秘境、自动伐木、自动采集、全自动七圣召唤、一条龙日常等；不修改游戏文件、不读写游戏内存。

- 实时任务：自动拾取、自动剧情、快速传送、半自动钓鱼、自动领取每日委托奖励
- 独立任务：全自动七圣召唤、自动伐木、自动秘境、自动幽境危战、全自动钓鱼、自动地脉花、自动音游、自动烹饪、自动分解圣遗物
- 全自动：一条龙日常、自动采集 / 挖矿 / 锄地、键鼠录制回放
- 实现方式：屏幕识别 + 模拟键鼠，不修改游戏文件、不读写内存

（来源：[官方仓库](https://github.com/babalae/better-genshin-impact)）

## 优缺点

| 优点 | 说明 |
|---|---|
| 16.9k stars | 更新活跃，最新 0.66.0（2026-09-26） |
| 功能覆盖全 | 拾取、剧情、钓鱼、秘境、伐木、采集、七圣召唤、一条龙日常 |
| 不碰游戏本体 | 官方说明只做屏幕识别 + 模拟键鼠，不改文件、不读写内存 |
| 可配置 | 拾取黑白名单、任务调度、键鼠录制回放 |
| GPL-3.0 开源 | 代码公开，可自行编译 |

| 需要注意 | 说明 |
|---|---|
| 只支持 Windows | 需要 Windows 10/11 64 位与 .NET 8 桌面运行时 |
| 配置要求不低 | 官方建议至少能中画质 60 帧流畅游玩；低配机器部分功能体验差 |
| 画面限制多 | 只支持 16:9，推荐 1920×1080 窗口化；开 HDR / 滤镜会失效 |
| 有封号风险 | 用户条款把第三方软件 / 模拟操作列为封号理由，项目也承认存在被检测可能 |
| 安装包很大 | 安装包约 481 MB，7z 包约 444 MB |
| 可能被安全软件拦截 | 模拟点击会被 360 / WD 自定义规则拦截，需要加白名单 |

> 以上基于官方文档与社区反馈整理（2026-10-26），以官方最新文档为准。

## 官方安装方式（可手动执行）

```powershell
$exe = 'BetterGI.Install.0.66.0.exe'
curl.exe -L --fail -o $exe "https://github.com/babalae/better-genshin-impact/releases/download/0.66.0/$exe"
if ((Get-FileHash $exe -Algorithm SHA256).Hash.ToLower() -ne 'e00c7fa49f9adb8b462525221b01b46ecc2f91681e7a154714f1c47575f033cf') { throw 'SHA256 校验失败，请重新下载' }
Start-Process -FilePath (Join-Path $PWD $exe)
```

安装包来源：[https://github.com/babalae/better-genshin-impact/releases/tag/0.66.0](https://github.com/babalae/better-genshin-impact/releases/tag/0.66.0)

## 验证状态

| 场景 | 状态 |
|---|---|
| Release 资产与 GitHub 计算的 SHA256 digest 已核对（480.9 MB） | 已核对 2026-10-26 |
| MCP 服务握手与工具列表（initialize / tools/list） | 已验证 2026-10-26 |
| 非目标宿主调用被拦截（HOST_NOT_ALLOWED） | 已验证 2026-10-26 |

> 本表仅列出已在本机实际执行并成功的场景；未列出的部分按官方文档整理。

## MCP 接入

BetterGI 本身不含 MCP，也没有对外接口；它是 Windows 桌面程序。本仓库的 MCP 只提供安装步骤、运行条件与常见坑。

本仓库自带一个零依赖的 MCP server（`mcp-server.mjs`），读取同目录的 `guide.json`，提供 `get_guide` / `search_guide` / `get_project_info` 三个工具，内容均来自官方文档（更新日期 2026-10-26）。

**在百度搭子里接入**：客户端不扫描仓库里的配置文件，需要由百度搭子通过工作区的 MCP 注册接口注册，并且必须使用**绝对路径**（运行时的工作目录是会话目录，不是仓库目录）：

```json
{
  "type": "local",
  "command": ["node", "<仓库绝对路径>/mcp-server.mjs"]
}
```

完成后，直接在同一个对话框里说：

> 把仓库克隆到固定目录（例如 C:\Users\<你>\bettergi-deploy-guide），再用绝对路径把里面的 mcp-server.mjs 注册到当前工作区的 MCP 配置里

> 注意：注册是按**工作区**生效的，换工作区要重新注册；克隆目录不要放在会话临时目录，否则目录被清理后注册项会失效。

**其它 MCP 客户端**：仓库根目录的 `.mcp.json` 只是通用写法（`command` + `args`），接入时同样要把 `args` 改成绝对路径。

> 使用范围：该 MCP 仅在百度搭子中可用；其它客户端调用会返回 `HOST_NOT_ALLOWED`，并附带下载与部署指引。

## 安装完成后：第一次启动

1. 用管理员身份运行 BetterGI（游戏本体是管理员权限，否则模拟点击无效）
2. 游戏设为 16:9 窗口化，推荐 1920×1080
3. 在「启动」页选择截图方式并点击启动，出现遮罩窗口说明识别正常
4. 按需开启自动拾取 / 自动剧情 / 一条龙等任务；改过分辨率或换显示器后要重启软件

> 官方建议把 BetterGI 加入安全软件白名单：360 和部分 Windows Defender 自定义规则会拦截模拟点击。

## 常见坑

- 启动后没反应：先用管理员身份运行 BetterGI；游戏是管理员权限，普通权限点不动
- 识别不准或功能失效：确认游戏为 16:9、1920×1080 窗口化，关掉 HDR / N 卡滤镜，亮度保持默认
- 改过分辨率、窗口大小或换显示器：重启 BetterGI，否则坐标全错
- 模拟点击被拦截：把 BetterGI 加入 360 / Windows Defender 白名单
- 低配电脑部分功能体验差：官方建议至少能中画质 60 帧流畅游玩
- 封号风险：用户条款明确把第三方软件 / 模拟操作列为封号理由，项目也承认存在被检测可能，请自行判断
- 运行需要 .NET 8 桌面运行时，缺失时启动会提示下载

## 免责声明

本仓库为第三方指南，与 BetterGI 官方无隶属关系，不代表官方立场。
教程基于官方文档编写（更新日期：2026-10-26），项目迭代快，请以[官方文档](https://www.bettergi.com/quickstart.html)为准。
因使用本教程产生的部署问题，请先在官方仓库的 issue 中检索。
