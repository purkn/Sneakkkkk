# Sneakkkkk

一个安静的桌面笔记工具。用小小的桌面入口收集灵感，也可以切进文档模式继续写。

黑白像素风 · 本机保存 · 无账号 · macOS / Windows

## 下载

前往 **[Releases 下载页面](https://github.com/purkn/Sneakkkkk/releases)**，选择你的系统。首次自动构建完成前，下载页面可能暂时没有版本。

| 下载文件 | 系统 | 使用方式 |
| --- | --- | --- |
| `Sneakkkkk-macOS-universal.zip` | macOS 12+，Apple Silicon / Intel | 解压，将 `Sneakkkkk.app` 拖进「应用程序」 |
| `Sneakkkkk-Windows-x64.zip` | Windows 10/11 x64 | 解压**全部文件**，打开 `Sneakkkkk.exe` |

macOS 版经过本机编译和临时签名校验，但没有 Apple 开发者签名或公证。Windows 是 Electron 移植预览版，尚未经过 Windows 真机验证，也没有代码签名。若系统提示风险，请先核对来源；不需要关闭系统安全保护。

## 两种记录方式

**速记**：只有多行输入区，随手记录。未提交内容会保存为本机草稿，提交后生成独立笔记。

**文档模式**：选择已有文档，写新增内容并追加到原文。macOS 可展开并直接修改前文，也可隐藏上方工具栏，让小窗保持简洁。

完整窗口支持标题与正文搜索、自定义分类名称和颜色、配色预设、置顶、文本导出，以及可恢复的废纸篓。

## 常用操作

| 操作 | 默认行为 |
| --- | --- |
| 单击桌面图标 | 打开速记 |
| 双击桌面图标 | 打开完整笔记 |
| `Control + Alt/Option + Space` | 呼出速记 |
| `Control + Alt/Option + D` | 呼出文档模式 |
| `Control + Alt/Option + H` | 隐藏记录窗口 |
| `Enter` | 换行 |
| macOS `Command + Enter` / Windows `Ctrl + Enter` | 提交当前小窗内容 |
| `Esc` | 隐藏小窗，保留草稿 |

在菜单栏 / 托盘打开 **设置** 可修改快捷键和显示图标。macOS 完整窗口也可用 `Command + ,` 打开设置。快捷键若与其他应用冲突，请在设置中更换。

## 平台差异

macOS 使用原生 AppKit + WebKit；Windows 使用独立的 Electron 移植版，界面和部分细节并非完全一致。

- macOS 支持快捷键录制、从已安装应用选择 Dock 显示图标、前文编辑自动保存、文档极简切换。
- Windows 支持快捷键文本配置、本地图片图标选择、文档前文编辑与追加。前文修改先保存为恢复草稿，在提交时与新增内容一起写入笔记。
- 更换显示图标不会改变程序身份或应用名称，也不会修改第三方应用。

## 数据与隐私

无需登录，不提供云同步，不主动上传笔记，也不包含统计或广告。

- macOS 原生版：`~/Library/Application Support/MellowNotes/`；部分偏好使用本机 UserDefaults。
- Windows 版：Electron 用户数据目录，通常为 `%APPDATA%/sneakkkkk/`。
- 首次下载不包含维护者的笔记、草稿、个人设置或账号凭据。

卸载前请自行备份数据目录。两个平台不会自动同步或迁移。详细说明见 [PRIVACY.md](PRIVACY.md)。请勿把自己的数据文件上传到 Issues。

## 从源码构建

### macOS 原生版

安装 Xcode Command Line Tools，在仓库根目录执行：

```sh
chmod +x build.sh
./build.sh
```

输出：`build/Sneakkkkk.app`，包含 Intel 和 Apple Silicon 架构。

### Windows 便携版

安装 Node.js 22 或更高版本：

```sh
npm ci --ignore-scripts
npm run pack:win
```

输出：`dist/Sneakkkkk-win32-x64/`。请保留整个文件夹。

开发 Electron 版可执行 `npm ci` 后 `npm start`。

### GitHub 自动构建

仓库 Actions 中的 **Build and publish apps** 会构建两平台包。首次推送源码时生成预览发布；后续在 Actions 中手动运行，或推送 `v*` 标签发布新版本。

## 授权：免费使用，禁止销售

本项目使用 **[Sneakkkkk Free Use, No Sale License 1.0](LICENSE)**，不是 MIT、GPL 或 OSI 认可的开源许可证。

- 允许个人、学习及公司内部免费使用；可用于辅助工作。
- 允许修改及免费分享，需保留许可和版权信息、注明修改。
- 未经单独书面许可，禁止销售原版或修改版、收费下载、付费订阅访问，以及将本软件作为收费功能打包出售。
- 第三方依赖仍遵循各自许可证。

上面是摘要，具体以英文 LICENSE 正文为准。图标、商标不代表与第三方软件存在关联。

## 反馈

遇到问题请 [提交 Issue](https://github.com/purkn/Sneakkkkk/issues)，说明系统版本、重现步骤和错误提示。截图请先隐藏笔记正文及其他个人信息。
