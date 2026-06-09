---
title: OpenCode — 开源 AI 编程助手入门
date: 2026-06-09 22:20:51
tags:
  - AI
  - OpenCode
  - 工具
categories:
  - 技术分享
---

[OpenCode](https://opencode.ai) 是一款开源的 AI 编程助手，拥有 160K+ GitHub Stars，支持在终端、桌面或 IDE 中使用，可接入 Claude、GPT、Gemini 等多种模型。

## 安装前置工具

- **终端模拟器** — 推荐 WezTerm、Alacritty、Ghostty、Kitty
- **Node.js**（如果用 npm/pnpm/yarn 安装）
- **Bun**（如果用 bun 安装）
- **curl**（如果用 install 脚本）
- **LLM 的 API Key** — 或使用 OpenCode Zen 内置模型
- **Windows 用户建议安装 WSL**以获得最佳体验

## 安装命令

```bash
# 一键安装（推荐）
curl -fsSL https://opencode.ai/install | bash

# npm
npm install -g opencode-ai

# bun
bun install -g opencode-ai

# Homebrew (macOS/Linux)
brew install anomalyco/tap/opencode

# Windows (Chocolatey)
choco install opencode

# Windows (Scoop)
scoop install opencode

# Docker
docker run -it --rm ghcr.io/anomalyco/opencode
```

安装后，在项目目录运行 `opencode` 即可启动，首次使用执行 `/init` 完成项目初始化。
