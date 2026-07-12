#!/bin/bash
cd "$(dirname "$0")"
echo ""
echo "═══════════════════════════════════════════════════"
echo "  🔄 同步日语工具到网站"
echo "═══════════════════════════════════════════════════"
echo ""
if [ -z "$(git status --porcelain)" ]; then
  echo "  ✓ 没有需要同步的改动"
  echo ""
  echo "  按任意键退出..."
  read -n 1
  exit 0
fi
echo "  📝 检测到以下改动："
git status --short
echo ""
COMMIT_MSG="更新 $(date '+%Y-%m-%d %H:%M')"
git add -A
git commit -m "$COMMIT_MSG"
echo ""
echo "  ⬆️  正在推送到 GitHub..."
if git push; then
  echo ""
  echo "  ✅ 同步完成！"
  echo "  🌐 EdgeOne 会自动重新部署，3-5 分钟后网站更新"
else
  echo ""
  echo "  ❌ 推送失败，可能是 Token 过期或网络问题"
fi
echo ""
echo "  按任意键关闭窗口..."
read -n 1
