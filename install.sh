#!/bin/bash
# ============================================================
# 🧠 Skill Creator Ultra — One-Click Installer
# Supports: Antigravity, Claude Code, Cursor, Windsurf,
#           Cline, GitHub Copilot, OpenClaw
# ============================================================

set -e

REPO_URL="https://github.com/marketingjuliancongdanh79-pixel/skill-generator.git"
SKILL_NAME="skill-creator-ultra"
TMP_DIR="/tmp/$SKILL_NAME-install"
VERSION="1.1.0"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color
BOLD='\033[1m'

print_header() {
    echo ""
    echo -e "${BOLD}${CYAN}🧠 Skill Creator Ultra v${VERSION} — Installer${NC}"
    echo -e "${CYAN}════════════════════════════════════════════${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

# Check git is installed
check_git() {
    if ! command -v git &> /dev/null; then
        print_error "Git is not installed. Please install Git first."
        echo "  → macOS: brew install git"
        echo "  → Ubuntu: sudo apt install git"
        echo "  → Fedora: sudo dnf install git"
        exit 1
    fi
}

# Clone or update repo
clone_repo() {
    if [ -d "$TMP_DIR" ]; then
        print_info "Updating existing download..."
        cd "$TMP_DIR" && git pull --quiet
    else
        print_info "Downloading Skill Creator Ultra..."
        git clone --quiet "$REPO_URL" "$TMP_DIR"
    fi
}

# Install to a specific path
install_to() {
    local target_dir="$1"
    local platform_name="$2"
    
    # Create parent directory if needed
    mkdir -p "$(dirname "$target_dir")"
    
    # Remove old installation if exists
    if [ -d "$target_dir" ]; then
        print_info "Removing old installation..."
        rm -rf "$target_dir"
    fi
    
    # Copy files (exclude .git)
    cp -r "$TMP_DIR" "$target_dir"
    rm -rf "$target_dir/.git"
    
    print_success "Installed to: $target_dir"
}

# Create bridge/rule files for platforms that need them
create_bridge_claude() {
    local project_dir="${1:-.}"
    local claude_md="$project_dir/CLAUDE.md"
    
    local bridge_text="
## Skill Creator Ultra
When user asks to \"create skill\", \"turn workflow into skill\", or \"automate this\":
- Read \`.claude/commands/$SKILL_NAME/SKILL.md\`
- Follow the 8 Phase pipeline
- Reference resources/ for templates and best practices
"
    
    if [ -f "$claude_md" ]; then
        if ! grep -q "Skill Creator Ultra" "$claude_md"; then
            echo "$bridge_text" >> "$claude_md"
            print_success "Appended bridge to existing CLAUDE.md"
        else
            print_info "CLAUDE.md already has Skill Creator Ultra bridge"
        fi
    else
        echo "$bridge_text" > "$claude_md"
        print_success "Created CLAUDE.md with bridge"
    fi
}

create_rule_cursor() {
    local rules_dir="${1:-.cursor/rules}"
    mkdir -p "$rules_dir"
    
    cat > "$rules_dir/$SKILL_NAME.mdc" << 'RULE'
---
description: Create AI Skills from ideas or workflows using 8-phase pipeline
globs:
alwaysApply: false
---

When user requests "create skill", "turn workflow into skill", or "automate":
- Read `.cursor/rules/skill-creator-ultra/SKILL.md`
- Follow 8 Phase pipeline
- Reference resources/ for templates and best practices
RULE
    
    print_success "Created Cursor rule file"
}

create_rule_windsurf() {
    local rules_dir="${1:-.windsurf/rules}"
    mkdir -p "$rules_dir"
    
    cat > "$rules_dir/$SKILL_NAME.md" << 'RULE'
---
trigger: manual
description: Create AI Skills from ideas or workflows using 8-phase pipeline
---

When user requests "create skill", "turn workflow into skill", or "automate":
- Read `.windsurf/rules/skill-creator-ultra/SKILL.md`
- Follow 8 Phase pipeline
RULE
    
    print_success "Created Windsurf rule file"
}

create_instructions_cline() {
    echo ""
    print_info "For Cline, add this to Settings → Custom Instructions:"
    echo ""
    echo '  When user requests "create skill" or "automate":'
    echo "  - Read .clinerules/$SKILL_NAME/SKILL.md"
    echo "  - Follow 8 Phase pipeline"
    echo ""
}

create_instructions_copilot() {
    local github_dir="${1:-.github}"
    local instructions="$github_dir/copilot-instructions.md"
    
    mkdir -p "$github_dir"
    
    local copilot_text="
## Skill Creator Ultra
When user requests \"create skill\" or \"automate this\":
- Read \`.github/$SKILL_NAME/SKILL.md\`
- Follow 8 Phase pipeline
"
    
    if [ -f "$instructions" ]; then
        if ! grep -q "Skill Creator Ultra" "$instructions"; then
            echo "$copilot_text" >> "$instructions"
            print_success "Appended to existing copilot-instructions.md"
        else
            print_info "copilot-instructions.md already has Skill Creator Ultra"
        fi
    else
        echo "$copilot_text" > "$instructions"
        print_success "Created copilot-instructions.md"
    fi
}

# Platform installers
install_antigravity_global() {
    local target="$HOME/.gemini/antigravity/skills/$SKILL_NAME"
    install_to "$target" "Antigravity (Global)"
    echo ""
    print_info "Open a new Antigravity chat and say: \"tạo skill mới\""
}

install_antigravity_workspace() {
    local target=".agent/skills/$SKILL_NAME"
    install_to "$target" "Antigravity (Workspace)"
    echo ""
    print_info "Open a new Antigravity chat and say: \"tạo skill mới\""
}

install_claude() {
    local target="$HOME/.claude/commands/$SKILL_NAME"
    install_to "$target" "Claude Code (Global)"
    create_bridge_claude "."
}

install_cursor() {
    local target=".cursor/rules/$SKILL_NAME"
    install_to "$target" "Cursor"
    create_rule_cursor ".cursor/rules"
}

install_windsurf() {
    local target=".windsurf/rules/$SKILL_NAME"
    install_to "$target" "Windsurf"
    create_rule_windsurf ".windsurf/rules"
}

install_cline() {
    local target=".clinerules/$SKILL_NAME"
    install_to "$target" "Cline"
    create_instructions_cline
}

install_copilot() {
    local target=".github/$SKILL_NAME"
    install_to "$target" "GitHub Copilot"
    create_instructions_copilot ".github"
}

install_openclaw() {
    echo ""
    print_info "OpenClaw uses System Prompt — cannot auto-install."
    echo ""
    echo "  Manual steps:"
    echo "  1. Open SKILL.md from: $TMP_DIR/SKILL.md"
    echo "  2. Copy contents into your Agent's System Prompt"
    echo "  3. Optionally upload resources/ to knowledge base"
    echo ""
    print_success "Files downloaded to: $TMP_DIR"
}

install_all() {
    install_antigravity_global
    echo ""
    install_claude
    echo ""
    install_cursor
    echo ""
    install_windsurf
    echo ""
    install_cline
    echo ""
    install_copilot
    echo ""
    install_openclaw
}

# Show menu
show_menu() {
    echo -e "  ${GREEN}1${NC}) 🟢 Google Antigravity ${BOLD}(Global — all projects)${NC}"
    echo -e "  ${GREEN}2${NC}) 🟢 Google Antigravity ${BOLD}(Workspace — this project)${NC}"
    echo -e "  ${PURPLE}3${NC}) 🟣 Claude Code"
    echo -e "  ${BLUE}4${NC}) 🔵 Cursor"
    echo -e "  ${YELLOW}5${NC}) 🟠 Windsurf"
    echo -e "  ${RED}6${NC}) 🟤 Cline"
    echo -e "  7) ⚫ GitHub Copilot"
    echo -e "  8) 🐾 OpenClaw"
    echo -e "  ${CYAN}9${NC}) 📦 ${BOLD}Install ALL platforms${NC}"
    echo -e "  0) ❌ Exit"
    echo ""
    read -p "Choose platform (0-9): " choice < /dev/tty
}

# Main
main() {
    print_header
    check_git
    
    # If argument provided, use it directly
    if [ -n "$1" ]; then
        choice="$1"
    else
        show_menu
    fi
    
    echo ""
    clone_repo
    echo ""
    
    case $choice in
        1) install_antigravity_global ;;
        2) install_antigravity_workspace ;;
        3) install_claude ;;
        4) install_cursor ;;
        5) install_windsurf ;;
        6) install_cline ;;
        7) install_copilot ;;
        8) install_openclaw ;;
        9) install_all ;;
        0) echo "Bye!" && exit 0 ;;
        *) print_error "Invalid choice" && exit 1 ;;
    esac
    
    echo ""
    echo -e "${CYAN}════════════════════════════════════════════${NC}"
    print_success "Skill Creator Ultra v${VERSION} installed!"
    echo -e "${CYAN}════════════════════════════════════════════${NC}"
    echo ""
}

main "$@"
