#!/bin/bash
# ============================================
# AXIS STACK — One-Command Agent Setup
# From Zero to Autonomous AI Agent in 48 Hours
# https://axissystems.substack.com
# ============================================

set -e

echo ""
echo "⚡ AXIS STACK INSTALLER"
echo "========================"
echo "Setting up your autonomous AI agent..."
echo ""

# Check if OpenClaw workspace exists
WORKSPACE="${OPENCLAW_WORKSPACE:-$HOME/.openclaw/workspace}"

if [ ! -d "$WORKSPACE" ]; then
    echo "⚠️  OpenClaw workspace not found at $WORKSPACE"
    echo "    Make sure OpenClaw is installed first: https://docs.openclaw.ai"
    exit 1
fi

echo "📁 Found workspace: $WORKSPACE"
echo ""

# Backup existing files
BACKUP_DIR="$WORKSPACE/.axis-backup-$(date +%Y%m%d-%H%M%S)"
echo "💾 Backing up existing files to $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"

for file in SOUL.md AGENTS.md USER.md MEMORY.md HEARTBEAT.md IDENTITY.md; do
    if [ -f "$WORKSPACE/$file" ]; then
        cp "$WORKSPACE/$file" "$BACKUP_DIR/$file"
        echo "   ✓ Backed up $file"
    fi
done

# Copy config files
echo ""
echo "📝 Installing config files..."

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for file in SOUL.md AGENTS.md USER.md MEMORY.md HEARTBEAT.md IDENTITY.md; do
    if [ -f "$SCRIPT_DIR/$file" ]; then
        cp "$SCRIPT_DIR/$file" "$WORKSPACE/$file"
        echo "   ✓ Installed $file"
    fi
done

# Create memory directory
echo ""
echo "🧠 Setting up memory architecture..."
mkdir -p "$WORKSPACE/memory"
echo "   ✓ Created memory/ directory"

# Create today's daily log
TODAY=$(date +%Y-%m-%d)
if [ ! -f "$WORKSPACE/memory/$TODAY.md" ]; then
    echo "# Daily Memory — $TODAY" > "$WORKSPACE/memory/$TODAY.md"
    echo "- AXIS Stack installed" >> "$WORKSPACE/memory/$TODAY.md"
    echo "   ✓ Created memory/$TODAY.md"
fi

# Create business directories
echo ""
echo "💼 Setting up business ops..."
mkdir -p "$WORKSPACE/business"
cp "$SCRIPT_DIR/templates/pipeline.md" "$WORKSPACE/business/pipeline.md" 2>/dev/null && echo "   ✓ Installed pipeline tracker" || true
cp "$SCRIPT_DIR/templates/knowledge-base.md" "$WORKSPACE/business/knowledge-base.md" 2>/dev/null && echo "   ✓ Installed knowledge base" || true

echo ""
echo "============================================"
echo "⚡ AXIS STACK INSTALLED SUCCESSFULLY"
echo "============================================"
echo ""
echo "Next steps:"
echo "  1. Edit SOUL.md — customize your agent's personality"
echo "  2. Edit USER.md — add your schedule and preferences"  
echo "  3. Restart OpenClaw gateway"
echo "  4. Send your first message via Telegram"
echo ""
echo "📖 Full guide: https://axissystems.substack.com"
echo "🆘 Need help? https://axissystems.substack.com"
echo ""
