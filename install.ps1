# ============================================================
# 🧠 Skill Creator Ultra — One-Click Installer (Windows)
# Supports: Antigravity, Claude Code, Cursor, Windsurf,
#           Cline, GitHub Copilot, OpenClaw
# ============================================================

$ErrorActionPreference = "Stop"

$REPO_URL = "https://github.com/marketingjuliancongdanh79-pixel/skill-generator.git"
$SKILL_NAME = "skill-creator-ultra"
$TMP_DIR = "$env:TEMP\$SKILL_NAME-install"
$VERSION = "1.1.0"

function Write-Header {
    Write-Host ""
    Write-Host "🧠 Skill Creator Ultra v$VERSION — Installer" -ForegroundColor Cyan
    Write-Host ("═" * 48) -ForegroundColor Cyan
    Write-Host ""
}

function Write-Success { param($msg) Write-Host "✅ $msg" -ForegroundColor Green }
function Write-Error2 { param($msg) Write-Host "❌ $msg" -ForegroundColor Red }
function Write-Info { param($msg) Write-Host "ℹ️  $msg" -ForegroundColor Blue }

function Test-GitInstalled {
    try { git --version | Out-Null; return $true }
    catch { 
        Write-Error2 "Git is not installed. Download from https://git-scm.com"
        return $false
    }
}

function Get-Repo {
    if (Test-Path $TMP_DIR) {
        Write-Info "Updating existing download..."
        Push-Location $TMP_DIR
        git pull --quiet 2>$null
        Pop-Location
    } else {
        Write-Info "Downloading Skill Creator Ultra..."
        git clone --quiet $REPO_URL $TMP_DIR 2>$null
    }
}

function Install-To {
    param($TargetDir, $PlatformName)
    
    $parentDir = Split-Path $TargetDir -Parent
    if (-not (Test-Path $parentDir)) {
        New-Item -ItemType Directory -Path $parentDir -Force | Out-Null
    }
    
    if (Test-Path $TargetDir) {
        Write-Info "Removing old installation..."
        Remove-Item $TargetDir -Recurse -Force
    }
    
    Copy-Item $TMP_DIR $TargetDir -Recurse
    Remove-Item "$TargetDir\.git" -Recurse -Force -ErrorAction SilentlyContinue
    
    Write-Success "Installed to: $TargetDir"
}

# Bridge/Rule file creators
function New-ClaudeBridge {
    $claudeMd = "CLAUDE.md"
    $bridge = @"

## Skill Creator Ultra
When user asks to "create skill", "turn workflow into skill", or "automate this":
- Read ``.claude/commands/$SKILL_NAME/SKILL.md``
- Follow the 8 Phase pipeline
- Reference resources/ for templates and best practices
"@
    
    if (Test-Path $claudeMd) {
        $content = Get-Content $claudeMd -Raw
        if ($content -notmatch "Skill Creator Ultra") {
            Add-Content $claudeMd $bridge
            Write-Success "Appended bridge to existing CLAUDE.md"
        } else {
            Write-Info "CLAUDE.md already has Skill Creator Ultra bridge"
        }
    } else {
        Set-Content $claudeMd $bridge
        Write-Success "Created CLAUDE.md with bridge"
    }
}

function New-CursorRule {
    $rulesDir = ".cursor\rules"
    New-Item -ItemType Directory -Path $rulesDir -Force | Out-Null
    
    $rule = @"
---
description: Create AI Skills from ideas or workflows using 8-phase pipeline
globs:
alwaysApply: false
---

When user requests "create skill", "turn workflow into skill", or "automate":
- Read ``.cursor/rules/skill-creator-ultra/SKILL.md``
- Follow 8 Phase pipeline
- Reference resources/ for templates and best practices
"@
    
    Set-Content "$rulesDir\$SKILL_NAME.mdc" $rule
    Write-Success "Created Cursor rule file"
}

function New-WindsurfRule {
    $rulesDir = ".windsurf\rules"
    New-Item -ItemType Directory -Path $rulesDir -Force | Out-Null
    
    $rule = @"
---
trigger: manual
description: Create AI Skills from ideas or workflows using 8-phase pipeline
---

When user requests "create skill", "turn workflow into skill", or "automate":
- Read ``.windsurf/rules/skill-creator-ultra/SKILL.md``
- Follow 8 Phase pipeline
"@
    
    Set-Content "$rulesDir\$SKILL_NAME.md" $rule
    Write-Success "Created Windsurf rule file"
}

function New-CopilotInstructions {
    $githubDir = ".github"
    New-Item -ItemType Directory -Path $githubDir -Force | Out-Null
    $instructions = "$githubDir\copilot-instructions.md"
    
    $text = @"

## Skill Creator Ultra
When user requests "create skill" or "automate this":
- Read ``.github/$SKILL_NAME/SKILL.md``
- Follow 8 Phase pipeline
"@
    
    if (Test-Path $instructions) {
        $content = Get-Content $instructions -Raw
        if ($content -notmatch "Skill Creator Ultra") {
            Add-Content $instructions $text
            Write-Success "Appended to copilot-instructions.md"
        } else {
            Write-Info "copilot-instructions.md already configured"
        }
    } else {
        Set-Content $instructions $text
        Write-Success "Created copilot-instructions.md"
    }
}

# Platform installers
function Install-AntigravityGlobal {
    $target = "$env:USERPROFILE\.gemini\antigravity\skills\$SKILL_NAME"
    Install-To $target "Antigravity (Global)"
    Write-Host ""
    Write-Info "Open a new Antigravity chat and say: 'tạo skill mới'"
}

function Install-AntigravityWorkspace {
    $target = ".agent\skills\$SKILL_NAME"
    Install-To $target "Antigravity (Workspace)"
    Write-Host ""
    Write-Info "Open a new Antigravity chat and say: 'tạo skill mới'"
}

function Install-ClaudeCode {
    $target = "$env:USERPROFILE\.claude\commands\$SKILL_NAME"
    Install-To $target "Claude Code (Global)"
    New-ClaudeBridge
}

function Install-Cursor {
    $target = ".cursor\rules\$SKILL_NAME"
    Install-To $target "Cursor"
    New-CursorRule
}

function Install-Windsurf {
    $target = ".windsurf\rules\$SKILL_NAME"
    Install-To $target "Windsurf"
    New-WindsurfRule
}

function Install-Cline {
    $target = ".clinerules\$SKILL_NAME"
    Install-To $target "Cline"
    Write-Host ""
    Write-Info "Add to Cline Settings → Custom Instructions:"
    Write-Host '  When user requests "create skill" or "automate":'
    Write-Host "  - Read .clinerules/$SKILL_NAME/SKILL.md"
    Write-Host "  - Follow 8 Phase pipeline"
}

function Install-Copilot {
    $target = ".github\$SKILL_NAME"
    Install-To $target "GitHub Copilot"
    New-CopilotInstructions
}

function Install-OpenClaw {
    Write-Host ""
    Write-Info "OpenClaw uses System Prompt — cannot auto-install."
    Write-Host ""
    Write-Host "  Manual steps:"
    Write-Host "  1. Open SKILL.md from: $TMP_DIR\SKILL.md"
    Write-Host "  2. Copy contents into your Agent's System Prompt"
    Write-Host "  3. Optionally upload resources/ to knowledge base"
    Write-Host ""
    Write-Success "Files downloaded to: $TMP_DIR"
}

function Install-All {
    Install-AntigravityGlobal; Write-Host ""
    Install-ClaudeCode; Write-Host ""
    Install-Cursor; Write-Host ""
    Install-Windsurf; Write-Host ""
    Install-Cline; Write-Host ""
    Install-Copilot; Write-Host ""
    Install-OpenClaw
}

# Menu
function Show-Menu {
    Write-Host "  1) 🟢 Google Antigravity (Global — all projects)" -ForegroundColor Green
    Write-Host "  2) 🟢 Google Antigravity (Workspace — this project)" -ForegroundColor Green
    Write-Host "  3) 🟣 Claude Code" -ForegroundColor Magenta
    Write-Host "  4) 🔵 Cursor" -ForegroundColor Blue
    Write-Host "  5) 🟠 Windsurf" -ForegroundColor Yellow
    Write-Host "  6) 🟤 Cline" -ForegroundColor DarkYellow
    Write-Host "  7) ⚫ GitHub Copilot"
    Write-Host "  8) 🐾 OpenClaw"
    Write-Host "  9) 📦 Install ALL platforms" -ForegroundColor Cyan
    Write-Host "  0) ❌ Exit"
    Write-Host ""
    $choice = Read-Host "Choose platform (0-9)"
    return $choice
}

# Main
function Main {
    param($DirectChoice)
    
    Write-Header
    
    if (-not (Test-GitInstalled)) { exit 1 }
    
    if ($DirectChoice) {
        $choice = $DirectChoice
    } else {
        $choice = Show-Menu
    }
    
    Write-Host ""
    Get-Repo
    Write-Host ""
    
    switch ($choice) {
        "1" { Install-AntigravityGlobal }
        "2" { Install-AntigravityWorkspace }
        "3" { Install-ClaudeCode }
        "4" { Install-Cursor }
        "5" { Install-Windsurf }
        "6" { Install-Cline }
        "7" { Install-Copilot }
        "8" { Install-OpenClaw }
        "9" { Install-All }
        "0" { Write-Host "Bye!"; exit 0 }
        default { Write-Error2 "Invalid choice"; exit 1 }
    }
    
    Write-Host ""
    Write-Host ("═" * 48) -ForegroundColor Cyan
    Write-Success "Skill Creator Ultra v$VERSION installed!"
    Write-Host ("═" * 48) -ForegroundColor Cyan
    Write-Host ""
}

# Run — support direct choice via argument
if ($args.Count -gt 0) {
    Main -DirectChoice $args[0]
} else {
    Main
}
