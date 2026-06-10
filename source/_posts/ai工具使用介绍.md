---
title: AI工具的使用分享
date: 2026-06-09 22:20:51
tags:
  - AI
  - 工具推荐
categories:
  - 技术分享
---

日常工作和学习中，AI 工具已经成了提升效率的重要帮手。下面分享我常用的几款以及使用心得。

## 日常 AI 工具一览

### 编程辅助
- **GitHub Copilot** — 代码补全非常智能，尤其适合 Java、Python
- **Cursor** — AI-first 编辑器，上下文理解能力强

### 对话与写作
- **ChatGPT** — 通用对话、头脑风暴、文档润色
- **Claude** — 长文本处理优秀，适合阅读和分析文档

### 效率工具
- **通义千问** — 中文理解好，免费额度充足
- **Perplexity** — 联网搜索 + AI 总结，适合调研

---

## OpenCode

本人最常用的免费 AI 工具，日常作业完全可以应付。里面有一些免费的大模型，个人觉得 **deepseek-v4-flash** 最好用，写得又快又准，效率很高，很推荐。

**缺点：**
- 虽然有免费额度，但有额度限制，超额后需要等一段时间刷新才能使用
- 上下文超过 50% 时会出现卡顿，工作效率会变慢

**使用过程中遇到的坑：** 用其他大模型写一些项目时太慢了，遇到稍大的作业建议用 `deepseek-v4-flash`。

### 安装命令

```bash
npm install -g opencode-ai
```

其他方式可以参考 B 站上的教学视频或者问 AI。

---

## Claude Code

工作效率比 OpenCode 高，日常写大项目用它很快，效果也很好。缺点是国外的大模型太贵了——我自己外接的 deepseek-v4 大模型。

**费用参考：** deepseek-v4-pro 曾写项目聊了两小时花了 20 元，而 deepseek-v4-pro 的价格是 flash 的 4 倍。

### 安装命令

**Windows（推荐 PowerShell）：**
```powershell
irm https://claude.ai/install.ps1 | iex
```

**Windows（WinGet）：**
```powershell
winget install Anthropic.ClaudeCode
```

**macOS / Linux：**
```bash
curl -fsSL https://claude.ai/install.sh | bash
```

安装后启动：`claude`

> 接国内大模型可以看 B 站上 "Claude Code 接 deepseek-v4" 的教程视频。

---

## Hermes Agent

Hermes 本质是一个 Agent，需要外接大模型。它能自我进化——遇到错误会总结起来写到自己的 `skills` 中，越用越顺手，里面的工具也挺全面的。

**Hermes Agent 的核心差异：**
- 唯一一个跨会话自我进化、24/7 常驻运行、能从消息 App 触达的开源智能体框架
- Claude Code 擅长 IDE 内编码，Hermes 擅长跑在后台的自动化工作流
- 两者不竞争，可互补使用

---

## 个人总结

- **OpenCode** — 适合日常简单作业，完全免费
- **Claude Code** — 适合复杂的项目，解决问题的能力比 OpenCode 强，但要花钱买 token
- **Hermes Agent** — 可以当个懂自己的助手，完成一些日常办公的工作流
- 其他免费的 AI 工具还有 **Trae**、**Quder**，可以自己去试用

除此之外，在 **Vebcoding** 中也可以去找一些插件或者 skills 来增强 AI 工具的能力。之后会专门写一个 Vebcoding 过程中的感悟。

这是我第一篇博客，贵在尝试，感谢观看，一起进步加油，Let`s go!!! 💪
