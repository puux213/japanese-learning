# 日语学习工具

一个自己做的日语学习网页工具，含口语练习和跟读练习两大模块。

## 关键地址

- **网站访问地址（分享用）**: https://japanese-learning.edgeone.dev/日语学习.html
- **本地文件夹**: `/Users/tan/Documents/個人/50篇演讲`
- **GitHub 仓库**: https://github.com/puux213/japanese-learning
- **部署平台**: 腾讯云 EdgeOne Pages（国内可访问，无需 VPN）
- **Notion 部署文档**: https://app.notion.com/p/39b0009ab78681c285dce62720d78501

## 功能模块

- 🗣️ **口语练习**：仿雅思口语，每天一个话题，支持录音、AI 追问、自定义题库
- 🎧 **跟读练习**：50 篇日语 TED 演讲，音频 + 日文原文 + 中文对照 + 生词
- 🔍 **中→日翻译工具**：支持多个 AI（DeepSeek/智谱/Groq/Gemini/Claude），带罗马音+假名+语法讲解
- 📓 **生词本**：一键添加，支持导出 CSV

## 同步流程（怎么把本地改动更新到网站）

三层链路：
**改动步骤**：
1. 在 `/Users/tan/Documents/個人/50篇演讲` 里改/加文件
2. 双击 `同步到网站.command` 脚本
3. 弹终端窗口 → 看到「✅ 同步完成！」→ 关掉
4. 等 3-5 分钟 EdgeOne 自动重新部署完成
5. 网站更新（所有访问者刷新页面即可看到）

## 本地脚本

| 脚本文件 | 作用 |
| --- | --- |
| `启动日语工具.command` | 本地起 http 服务器，Chrome 打开工具（离线用） |
| `同步到网站.command` | 把本地改动推到 GitHub，触发 EdgeOne 部署 |

首次双击可能弹「无法验证开发者」→ 右键 → 打开 → 授权一次即可。

## 数据存储

**用户数据**（生词本、进度、笔记、API Keys）存在浏览器 localStorage：
- 每次操作自动保存
- 关浏览器/重启电脑都不影响
- **不同域名的数据是分开的**（localhost 和 edgeone.dev 各存一份）
- **清理浏览器数据、换浏览器、无痕模式会丢**

**备份建议**：定期在网页右上角点「📤 导出数据」下载 JSON 存网盘。

## AI Key 配置（用户在网页 ⚙️ 设置里填）

按翻译质量+可用性优先级：
1. **DeepSeek**（国内直连，10元送额度）: https://platform.deepseek.com/api_keys
2. **智谱 GLM-4-Flash**（国内直连，完全免费）: https://bigmodel.cn/usercenter/apikeys
3. Groq / Gemini / Claude（海外，需 VPN）

Key 只存本地浏览器，不会外传。

## 讲稿完成情况

- ✅ 已补：1-10 篇（完整日文原文 + 中文对照 + 生词）
- ⏳ 待补：11-50 篇（只有音频和标题）

**补讲稿的方法**：告诉 Claude「补 X-Y 篇讲稿」，Claude 读 PDF 提取内容 → 更新 HTML → 你双击同步脚本。

## GitHub 认证

已用 Personal Access Token 配置在本地 `.git/config` 里的 remote URL 中。
- ⚠️ 不要把整个文件夹/`.git/config` 发给别人
- 如 Token 泄漏，去 https://github.com/settings/tokens 撤销后重新生成

## 常见改动示例

告诉 Claude：
- 「补 11-15 篇讲稿」→ 读 PDF 更新数据
- 「加一个 XX 功能到网页」→ 改 HTML
- 「口语题库加一批话题」→ 改 PRESET_TOPICS 数组
- 「修改配色/字体」→ 改 CSS
- 「不显示某个按钮了」→ 找到对应位置删除或隐藏

改完后**必须**双击 `同步到网站.command` 才会上线，光在本地看得到不算。

## 依赖信息

- HTML 是单文件应用（一个 .html 装所有 JS/CSS）
- 音频文件是 audio.m4a（每篇 ~2MB，从原 mp4 视频用 ffmpeg 提取）
- Python3 用来跑本地 http 服务器（Mac 自带）
- Git 用来推 GitHub（Mac 自带）
- 无需 npm、无需构建工具

## 更新日志

**2026-07-12**
- 部署到腾讯云 EdgeOne Pages（国内可访问）
- 关联 GitHub 自动化部署
- 补充第 1-10 篇 TED 演讲完整讲稿+生词
- 添加国内 AI 支持（DeepSeek + 智谱 GLM）
- 加了"关闭原文/翻译"两个独立开关
- 首页只显示 7 篇，加载下一周按钮
- 空格/左右键快捷键控制音频
- 音频文件从 mp4 提取为 m4a 减小体积

**2026-07-11**
- 初版工具完成（口语 + 跟读双模块）
- 加入 5 篇预设 TED 演讲
- 支持导入/导出数据 JSON
