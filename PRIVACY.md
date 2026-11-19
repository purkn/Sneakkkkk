# 隐私与发布边界

本项目只保存本机笔记，不包含云同步、统计、广告、账号或 API 密钥。运行时不主动上传笔记；Electron 开发依赖安装和 GitHub 构建需要联网下载依赖。

macOS 原生版数据：用户 Application Support/MellowNotes，快捷键与图标偏好存放在本机 UserDefaults。Windows 版数据：系统 app.getPath('userData') 返回的 Sneakkkkk 用户数据目录（通常为 %APPDATA%/sneakkkkk）。不同平台不会自动迁移个人数据。

发行包从文件白名单生成：Sources/main.m、Resources 下的界面及应用图像、desktop 跨平台代码、构建脚本、依赖锁文件及说明。排除工作区其他文件、Git 历史、个人笔记、草稿、导出图片、其他压缩包、日志、环境文件与本机偏好。系统程序图标只在使用者主动选择时从其本机读取，不随源码附送第三方应用图标。

自选图标和快捷键会保存在使用者本机。图标替换不会改变软件身份，进程与应用名称仍可被系统查看。
