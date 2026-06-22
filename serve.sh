#!/bin/bash
#
# 本地预览/停止脚本
#
#   ./serve.sh        启动本地预览  http://localhost:4000
#   ./serve.sh stop   停止本地预览

set -e
cd "$(dirname "$0")"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

PID_FILE="_site/.jekyll.pid"

stop_server() {
    if [ -f "$PID_FILE" ]; then
        PID=$(cat "$PID_FILE")
        if kill -0 "$PID" 2>/dev/null; then
            kill "$PID"
            rm -f "$PID_FILE"
            echo "✅ 本地预览已停止"
        else
            rm -f "$PID_FILE"
            echo "⚠️  服务未在运行（残留 PID 已清理）"
        fi
    else
        echo "⚠️  服务未在运行"
    fi
}

case "${1:-start}" in
    stop)
        stop_server
        ;;
    start|*)
        if [ -f "$PID_FILE" ]; then
            PID=$(cat "$PID_FILE")
            if kill -0 "$PID" 2>/dev/null; then
                echo "⚠️  本地预览已在运行 http://localhost:4000"
                echo "    先运行 ./serve.sh stop 停止"
                exit 0
            fi
        fi
        echo "🚀 启动本地预览..."
        bundle exec jekyll serve &
        echo $! > "$PID_FILE"
        sleep 3
        echo "✅ 预览就绪 http://localhost:4000"
        echo "   ./serve.sh stop 停止"
        ;;
esac
