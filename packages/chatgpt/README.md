# ChatGPT 快捷切换（packages/chatgpt）

通过快捷键切换 ChatGPT 应用的显示/隐藏状态。

## 快捷键

- **默认快捷键**：`Cmd + Alt + E`
- **配置项**：`CHATGPT_SHORTCUT`、`CHATGPT_APP`、`CHATGPT_BUNDLE`

## 功能行为

- ChatGPT 未运行 → 启动 ChatGPT
- ChatGPT 运行中且窗口可见 → 隐藏 ChatGPT
- ChatGPT 运行中但窗口隐藏 → 显示 ChatGPT

## 配置

在 `.env` 文件中配置以下环境变量：

```env
# ChatGPT 快捷键
CHATGPT_SHORTCUT=cmd+alt+E

# ChatGPT 应用路径（用于启动应用）
CHATGPT_APP=/Applications/ChatGPT.app

# ChatGPT bundleID（用于查找运行中的应用）
CHATGPT_BUNDLE=com.openai.codex
```
