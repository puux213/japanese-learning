#!/bin/bash
cd "$(dirname "$0")"
(sleep 1 && open -a "Google Chrome" "http://localhost:8000/日语学习.html" 2>/dev/null || open "http://localhost:8000/日语学习.html") &
echo ""
echo "═══════════════════════════════════════════════════"
echo "  日语学习工具已启动 🌸"
echo "═══════════════════════════════════════════════════"
echo "  完成后按 Ctrl+C 停止"
echo "═══════════════════════════════════════════════════"
python3 -m http.server 8000
