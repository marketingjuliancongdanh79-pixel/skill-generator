<p align="center">
  <h1 align="center">🧠 Skill Creator Ultra</h1>
  <p align="center">
    <strong>The most comprehensive AI Skill creation toolkit on the market.</strong><br/>
    <em>Bộ công cụ tạo AI Skill toàn diện nhất trên thị trường.</em>
  </p>
  <a href="https://unikorn.vn/p/skillgenerator?ref=embed" target="_blank"><img src="https://unikorn.vn/api/widgets/badge/skillgenerator?theme=light" alt="Skill Generator trên Unikorn.vn" style="width: 256px; height: 64px;" width="256" height="64" /></a>
<a href="https://unikorn.vn/p/skillgenerator?ref=embed" target="_blank"><img src="https://unikorn.vn/api/widgets/badge/skillgenerator/rank?theme=light&type=daily" alt="Skill Generator - Hàng ngày" style="width: 250px; height: 64px;" width="250" height="64" /></a>
<a href="https://unikorn.vn/p/skillgenerator?ref=embed" target="_blank"><img src="https://unikorn.vn/api/widgets/badge/skillgenerator/rank?theme=light&type=weekly" alt="Skill Generator - Hàng tuần" style="width: 250px; height: 64px;" width="250" height="64" /></a>
<a href="https://unikorn.vn/p/skillgenerator?ref=embed" target="_blank"><img src="https://unikorn.vn/api/widgets/badge/skillgenerator/rank?theme=light&type=monthly" alt="Skill Generator - Hàng tháng" style="width: 250px; height: 64px;" width="250" height="64" /></a>
  <p align="center">
    <img src="https://img.shields.io/badge/version-1.1.0-blue" alt="version"/>
    <img src="https://img.shields.io/badge/files-56-green" alt="files"/>
    <img src="https://img.shields.io/badge/scripts-9-orange" alt="scripts"/>
    <img src="https://img.shields.io/badge/platforms-7-purple" alt="platforms"/>
    <img src="https://img.shields.io/badge/tests-60%2F60-brightgreen" alt="tests"/>
    <img src="https://img.shields.io/badge/resources-193KB-yellow" alt="resources"/>
  </p>
</p>

---

## 🌍 Language / Ngôn ngữ

- [English](#english)
- [Tiếng Việt](#-phiên-bản-tiếng-việt-vietnamese-version)

---

# English

## 📋 Table of Contents

- [Introduction](#introduction)
- [Key Features](#-key-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Scripts & Tools](#-scripts--tools-9-utilities)
- [Slash Commands](#-slash-commands-8-commands)
- [Project Structure](#-project-structure)
- [Platform Compatibility](#-platform-compatibility)
- [Evaluation System](#-evaluation-system)
- [Documentation](#-documentation)
- [FAQ](#-faq)
- [Changelog](#-changelog-en)
- [Contributing](#-contributing)
- [License](#-license-en)

---

## Introduction

**Skill Creator Ultra** is a specialized AI Skill for **Google Antigravity** (and 7 other platforms). It helps you **create production-quality AI Skills** through an **8-phase pipeline** — even if you **DON'T know** what a skill is, what YAML is, or how to write SKILL.md.

**You only need:**

- ✅ An idea about what you want to automate
- ✅ A workflow / process / logic in your head

**AI handles the rest:**

- 🎤 Smart interview with 5 extraction techniques + Quick Mode
- 🔍 Auto-detect complexity → choose the right architecture
- 🏗️ Generate a **complete skill package** for 7 platforms
- 🧪 Test, evaluate with 7-dimension scoring, scan for security issues
- 📦 Package and publish to marketplaces

### What makes Ultra different from skill-generator?

Ultra **merges** the best of two skill creators and **adds** competitive features:

| Feature | Source | Description |
| --- | --- | --- |
| 🎤 8-Phase Pipeline | skill-generator + Anthropic | Interview → Extract → Detect → Generate → Test → Eval → Iterate → Optimize |
| ⚡ Quick Mode | NEW (GPTs Builder-inspired) | One-shot skill creation for clear descriptions |
| 📊 7-Dimension Eval | NEW (DeepEval-inspired) | Correctness, Completeness, Format, Adherence, Safety, Efficiency, Robustness |
| 🔐 Security Scanning | NEW (Promptfoo-inspired) | 5 checks: Prompt Injection, PII, Secrets, Scope, Destructive Commands |
| 🔄 CI/CD Integration | NEW | `ci_eval.py` script for GitHub Actions / GitLab CI |
| 📦 Package & Publish | NEW | `.skill` packaging → publish to GitHub, Agent Skills Market, SkillsMP |
| 🤖 3 AI Agents | Anthropic | Grader + Comparator + Analyzer for blind A/B testing |
| 🎯 Description Optimization | Anthropic | Trigger Eval → Pushy descriptions → anti-triggers |
| 🌐 Multi-Platform Export | skill-generator | Antigravity, Claude, Cursor, Windsurf, OpenClaw, Cline, Copilot |
| 🔎 Pattern Detection | skill-generator | Auto-detect complexity → choose architecture |
| 🔗 System Mode | skill-generator | Multi-skill pipeline orchestration with I/O contracts |
| 📝 16 Prompt Principles | Both | 16 principles with ❌/✅ code examples |
| ❌ 15 Anti-Patterns | skill-generator | Named patterns: 🐙 Octopus, 👻 Ghost, 🎪 Circus... |
| ✍️ 10 Writing Patterns | NEW | Expert patterns: 🎯 Sniper, 🧬 DNA, 🪞 Mirror... |
| 📺 Eval Viewer | Anthropic | HTML viewer for benchmark results |

### Who is this for?

| Audience | Example |
| --- | --- |
| **Non-coders** | Sales rep who wants AI to auto-draft price quotes |
| **Developers** | Want AI to format commit messages, review code, generate docs |
| **Team Leads** | Standardize team workflows as reusable, testable AI Skills |
| **Skill Developers** | Build & publish skills to marketplaces for others to use |
| **Prompt Engineers** | Upgrade from ad-hoc prompts to structured, evaluated skill systems |

---

## ✨ Key Features

### Pipeline — 8 Phases

```text
Phase 1-5: CREATE (always runs)
───────────────────────────────────────
  1. 🎤 Interview  — Smart extraction + Quick Mode
  2. 🔬 Extract    — Raw info → structured components
  3. 🔎 Detect     — Pattern detection + complexity scoring
  4. 🏗️ Generate   — Full package for 7 platforms
  5. 🧪 Test       — Dry run + validation + Package & Publish

Phase 6-8: REFINE (optional, for production skills)
───────────────────────────────────────
  6. 📊 Eval       — 7-dimension scoring + security scanning
  7. 🔄 Iterate    — Fix → re-test → blind compare
  8. 🎯 Optimize   — Trigger accuracy tuning
```

### 5 Operating Modes

| Mode | When | Phases |
| --- | --- | --- |
| **⚡ Quick Mode** | User describes clearly (triggers + steps + rules + output) | 4 → 5 |
| **Standard** | User has rough idea, needs some clarification | 1 (short) → 3 → 4 → 5 |
| **Full Interview** | User only knows "I want automation" | 1 → 2 → 3 → 4 → 5 |
| **System Mode** | Multi-step workflow (≥3 independent steps) | 1 → 2 → 3 → 4S → 5 |
| **Improve Mode** | Existing skill needs eval + improvement | 6 → 7 |

---

## 🔧 Installation

### ⚡ One-Click Install (Recommended)

Install with a single command — the script auto-detects your OS, lets you choose a platform, clones the repo, and creates all bridge/rule files:

**macOS / Linux:**

```bash
curl -sL https://raw.githubusercontent.com/marketingjuliancongdanh79-pixel/skill-generator/main/install.sh | bash
```

**Windows (PowerShell):**

```powershell
irm https://raw.githubusercontent.com/marketingjuliancongdanh79-pixel/skill-generator/main/install.ps1 | iex
```

> 💡 The installer shows an interactive menu to choose your platform (Antigravity, Claude Code, Cursor, Windsurf, Cline, Copilot, OpenClaw) or install ALL at once.

---

### Prerequisites (Manual Install)

- A supported AI Agent platform (see compatibility table below)
- Python 3.8+ (optional, for scripts)

### 🟢 Google Antigravity (Native — Recommended)

**Global Installation** — Available in ALL projects:

```bash
# macOS / Linux
cp -r skill-creator-ultra ~/.gemini/antigravity/skills/skill-creator-ultra
```

```powershell
# Windows (PowerShell)
Copy-Item -Recurse skill-creator-ultra "$env:USERPROFILE\.gemini\antigravity\skills\skill-creator-ultra"
```

**Workspace Installation** — Only in current project:

```bash
cp -r skill-creator-ultra .agent/skills/skill-creator-ultra
```

**After install:** Open a new chat and say "tạo skill mới" to verify.

---

### 🟣 Claude Code (Anthropic)

Claude Code supports Custom Commands via `.claude/commands/`.

**Step 1:** Copy the skill

```bash
# Global
cp -r skill-creator-ultra ~/.claude/commands/skill-creator-ultra

# Or Workspace
mkdir -p .claude/commands
cp -r skill-creator-ultra .claude/commands/skill-creator-ultra
```

**Step 2:** Create bridge file — append to `CLAUDE.md` at project root:

```markdown
## Skill Creator Ultra
When user asks to "create skill", "turn workflow into skill", or "automate this":
- Read `.claude/commands/skill-creator-ultra/SKILL.md`
- Follow the 8 Phase pipeline
- Reference resources/ for templates and best practices
```

**Step 3:** Use it

```
You: Create a skill for formatting commit messages
Claude: (Reads SKILL.md → Starts interviewing)
```

---

### 🔵 Cursor

Cursor supports Rules — use skill-creator-ultra as a Custom Rule.

**Step 1:** Copy into Cursor Rules

```bash
mkdir -p .cursor/rules
cp -r skill-creator-ultra .cursor/rules/skill-creator-ultra
```

```powershell
# Windows
New-Item -ItemType Directory -Force -Path ".cursor\rules"
Copy-Item -Recurse skill-creator-ultra ".cursor\rules\skill-creator-ultra"
```

**Step 2:** Create rule file `.cursor/rules/skill-creator-ultra.mdc`:

```markdown
---
description: Create AI Skills from ideas or workflows using 8-phase pipeline
globs:
alwaysApply: false
---

When user requests "create skill", "turn workflow into skill", or "automate":
- Read `.cursor/rules/skill-creator-ultra/SKILL.md`
- Follow 8 Phase pipeline
- Reference resources/ for templates and best practices
```

**Step 3:** Use it

```
You: @skill-creator-ultra create a skill for weekly reports
Cursor: (Reads rule → Applies SKILL.md → Starts interview)
```

---

### 🟠 Windsurf / Codeium

Windsurf uses Cascade Rules — similar to Cursor.

```bash
mkdir -p .windsurf/rules
cp -r skill-creator-ultra .windsurf/rules/skill-creator-ultra
```

Create `.windsurf/rules/skill-creator-ultra.md`:

```markdown
---
trigger: manual
description: Create AI Skills from ideas or workflows
---

When user requests "create skill" or "automate this":
- Read `.windsurf/rules/skill-creator-ultra/SKILL.md`
- Follow 8 Phase pipeline
```

---

### 🟤 Cline (VS Code Extension)

Cline uses Custom Instructions — paste SKILL.md into System Prompt.

```bash
cp -r skill-creator-ultra .clinerules/skill-creator-ultra
```

In Cline Settings → Custom Instructions, add:

```
When user requests "create skill" or "automate":
- Read .clinerules/skill-creator-ultra/SKILL.md
- Follow 8 Phase pipeline
```

---

### ⚫ GitHub Copilot

```bash
cp -r skill-creator-ultra .github/skill-creator-ultra
```

Add to `.github/copilot-instructions.md`:

```markdown
## Skill Creator Ultra
When user requests "create skill" or "automate this":
- Read `.github/skill-creator-ultra/SKILL.md`
- Follow 8 Phase pipeline
```

> ⚠️ **Note:** Copilot doesn't support running scripts directly.

---

### 🐾 OpenClaw (AI Gateway)

OpenClaw uses System Prompt — paste SKILL.md content.

1. Open agent config in OpenClaw Admin Panel
2. Copy contents of `SKILL.md` into **System Prompt**
3. Optionally upload `resources/` files to knowledge base
4. Test: *"Tạo cho tao 1 skill tự soạn email báo giá"*

> ⚠️ OpenClaw has token limits. If too long, use slim SKILL.md only.

---

### 📥 Quick Install Table

| Platform | Command (macOS/Linux) |
| --- | --- |
| **Antigravity (Global)** | `cp -r skill-creator-ultra ~/.gemini/antigravity/skills/` |
| **Antigravity (Workspace)** | `cp -r skill-creator-ultra .agent/skills/` |
| **Claude Code** | `cp -r skill-creator-ultra ~/.claude/commands/` |
| **Cursor** | `cp -r skill-creator-ultra .cursor/rules/` |
| **Windsurf** | `cp -r skill-creator-ultra .windsurf/rules/` |
| **Cline** | `cp -r skill-creator-ultra .clinerules/` |
| **Copilot** | `cp -r skill-creator-ultra .github/` |
| **OpenClaw** | Copy SKILL.md content → Agent System Prompt |

---

## 🚀 Usage

### Way 1: Natural language (AI auto-triggers)

| What you say | AI understands |
| --- | --- |
| "Create a new skill for deploy automation" | → Activates skill-creator-ultra |
| "Turn this review workflow into a skill" | → Activates skill-creator-ultra |
| "I want AI to auto-write weekly reports" | → Activates skill-creator-ultra |
| "Make a new skill" / "Tạo skill" | → Activates skill-creator-ultra |
| "Improve my existing skill X" | → Activates skill-creator-ultra (Improve Mode) |

### Way 2: Slash commands

Type `/` in your AI chat to access quick commands (see Slash Commands below).

### Full Workflow

```text
You describe your idea
    ↓
⚡ Quick Mode check — is description clear enough?
    ├── YES → Confirm → Generate skill immediately
    └── NO → Smart interview (5-10 questions)
         ↓
    🔍 AI detects pattern + calculates complexity score
         ↓
    🏗️ AI generates full skill package (SKILL.md + resources + examples + scripts)
         ↓
    🧪 AI dry-runs with realistic test scenarios
         ↓
    ✅ Skill complete, ready to deploy!
    
    (Optional: Phase 6-8 for production refinement)
         ↓
    📊 7-dimension eval + security scan
         ↓
    🔄 Iterate based on scores
         ↓
    🎯 Optimize trigger accuracy
```

### Real-world Example

**You:** "I want a skill that auto-writes weekly reports. When I say my tasks, it formats them into 4 sections: Done, In Progress, Blockers, Next Week. Keep under 400 words because my boss reads on mobile."

**AI:** This is a Quick Mode trigger (you gave: trigger + steps + rules + output format). Let me confirm and generate...

→ Generates `weekly-report-writer` skill with SKILL.md, 2 examples (happy path + edge case), constraints, deployed in 2 minutes.

---

## 🔧 Scripts & Tools (9 Utilities)

```bash
# CI/CD evaluation checker (NEW)
python scripts/ci_eval.py eval_results.json --min-score 85
python scripts/ci_eval.py eval_results.json --strict --format json

# Package skill for distribution (NEW)
python scripts/package_skill.py ./my-skill/ ./dist/my-skill.skill

# Validate SKILL.md structure
python scripts/validate_skill.py ./path/to/my-skill/

# Simulate dry-run
python scripts/simulate_skill.py ./path/to/my-skill/

# Audit against 7 Perfect Principles → S/A/B/C/D/F grade
python scripts/skill_audit.py ./path/to/my-skill/
python scripts/skill_audit.py ./path/to/my-skill/ --json --strict

# View stats + Cognitive Load Score
python scripts/skill_stats.py ./path/to/my-skill/

# Export to Cursor/Claude/Windsurf/Cline/Copilot/OpenClaw
python scripts/skill_export.py ./path/to/my-skill/ --platform cursor
python scripts/skill_export.py ./path/to/my-skill/ --platform all

# Compare 2 versions of a skill
python scripts/skill_compare.py ./old-skill/ ./new-skill/

# Scaffold a new skill from scratch
python scripts/skill_scaffold.py my-new-skill --full
python scripts/skill_scaffold.py my-new-skill --interactive
```

### Script Details

| Script | Purpose | Exit Codes |
| --- | --- | --- |
| `ci_eval.py` | CI/CD pipeline checker — validates eval score + security | 0=pass, 1=iterate, 3=security-block |
| `package_skill.py` | Create `.skill` distribution archive | 0=success |
| `validate_skill.py` | Check SKILL.md YAML, sections, structure | 0=valid, 1=errors |
| `skill_audit.py` | Audit 7 principles → grade S/A/B/C/D/F | 0=pass |
| `skill_scaffold.py` | Generate skeleton with correct structure | 0=created |
| `skill_export.py` | Export to 7 platforms | 0=exported |
| `skill_compare.py` | Diff 2 versions, highlight changes | 0=compared |
| `skill_stats.py` | Statistics + Cognitive Load score | 0=analyzed |
| `simulate_skill.py` | Dry-run simulation | 0=simulated |

---

## ⚡ Slash Commands (8 Commands)

Type `/` in your AI chat to access:

| Command | Description |
| --- | --- |
| `/skill-generate` | 🧠 **Create new skill from idea** (8-Phase pipeline) |
| `/skill-audit` | 🔍 Audit skill against 7 principles |
| `/skill-export` | 📦 Export to other platforms |
| `/skill-stats` | 📊 View stats + Cognitive Load |
| `/skill-compare` | 🔄 Compare 2 skill versions |
| `/skill-scaffold` | 🧩 Create new skill skeleton |
| `/skill-validate` | ✅ Check SKILL.md validity |
| `/skill-simulate` | 🧪 Simulate dry-run |

---

## 📁 Project Structure

```text
skill-creator-ultra/                    56 files | 193 KB resources
├── SKILL.md                            🧠 Main orchestrator (388 lines, 8 phases)
├── README.md                           📖 This file
│
├── phases/                             🎬 8 phase guides
│   ├── phase1_interview.md             🎤 Smart interview + ⚡ Quick Mode
│   ├── phase2_extract.md               🔬 Knowledge extraction → components
│   ├── phase3_detect.md                🔎 Pattern detection + complexity scoring
│   ├── phase4_generate.md              🏗️ 7-platform code generation (545 lines)
│   ├── phase5_test.md                  🧪 Dry run + validation + 📦 Package & Publish
│   ├── phase6_eval.md                  📊 7-dimension eval + 🔐 security scanning
│   ├── phase7_iterate.md               🔄 Fix → re-test → blind compare
│   └── phase8_optimize.md              🎯 Description trigger optimization
│
├── agents/                             🤖 Eval agents (from Anthropic)
│   ├── grader.md                       Assertion grading (5-point scale)
│   ├── comparator.md                   Blind A/B comparison
│   └── analyzer.md                     Root cause analysis
│
├── resources/                          📚 17 reference docs (193 KB)
│   ├── skill_writing_guide.md          ✍️ 10 expert patterns (634 lines) — 🎯🧬🪞🏗️🛡️🎚️🔬🌳📐📆
│   ├── prompt_engineering.md           🧠 16 principles (532 lines) — specificity, CoT, few-shot...
│   ├── anti_patterns.md                ❌ 15 named patterns (377 lines) — 🐙🎭💨🔓📜🤖🎪...
│   ├── eval_guide.md                   📊 7-dimension eval reference (145 lines)
│   ├── description_optimization.md     🎯 Trigger accuracy + anti-triggers (91 lines)
│   ├── skill_template.md              📄 Standard SKILL.md template + checklist
│   ├── interview_questions.md          🎤 30+ questions + Expert Probing
│   ├── industry_questions.md           🏭 8 industry-specific question sets
│   ├── pattern_detection.md            🔍 Decision tree + Complexity scoring
│   ├── advanced_patterns.md            🧩 6 architecture patterns
│   ├── composition_cookbook.md          🔗 5 multi-skill composition patterns
│   ├── checklist.md                    ✅ 2-tier quality checklist (Basic + Expert)
│   ├── schemas.md                      📋 JSON schemas for eval
│   ├── scripts_guide.md               🔧 Scripts usage guide
│   ├── blueprints.md                   📘 10 ready-made skill templates
│   ├── versioning_guide.md             📆 Skill upgrade guide
│   └── script_integration.md           ⚙️ Script integration (7 security layers)
│
├── scripts/                            🔧 9 Python scripts
│   ├── ci_eval.py                      🆕 CI/CD evaluation checker
│   ├── package_skill.py                🆕 .skill file packager
│   ├── validate_skill.py               Validate SKILL.md structure
│   ├── simulate_skill.py               Simulate dry-run
│   ├── skill_audit.py                  Audit 7 principles → grade S-F
│   ├── skill_export.py                 Export to 7 platforms
│   ├── skill_stats.py                  Statistics + Cognitive Load
│   ├── skill_compare.py                Compare 2 versions
│   └── skill_scaffold.py              Scaffold new skill
│
├── examples/                           🎯 5 snapshot examples
│   ├── example_git_commit.md           🟢 Simple skill (Complexity ≤ 5)
│   ├── example_api_docs.md             🟡 Medium skill (Complexity 6-12)
│   ├── example_db_migration.md         🔴 Complex skill (Complexity 13+)
│   ├── example_anthropic_pdf.md        📄 Anthropic's PDF skill analysis
│   └── example_anthropic_frontend.md   🌐 Anthropic's frontend skill analysis
│
├── eval-viewer/                        📺 Benchmark HTML viewer
├── assets/                             🎨 Static assets
└── .agents/workflows/                  ⚡ 8 slash commands
```

---

## 🌐 Platform Compatibility

| Platform | Skills / Custom Instructions | Compatibility | Notes |
| --- | --- | --- | --- |
| **Google Antigravity** | ✅ Skills (SKILL.md) | 🟢 100% Native | Designed for this platform |
| **Claude Code** | ✅ Custom Commands (CLAUDE.md) | 🟢 95% | Full multi-file support |
| **Cursor** | ✅ Rules (.cursor/rules/) | 🟡 85% | Use as Rule, add bridge file |
| **Windsurf / Codeium** | ✅ Rules (.windsurfrules) | 🟡 85% | Similar to Cursor |
| **Cline** | ✅ Custom Instructions (.clinerules) | 🟡 80% | Paste into System Prompt |
| **OpenClaw** | ✅ System Prompt (Agent Config) | 🟡 80% | Via Telegram bot |
| **GitHub Copilot** | ✅ Instructions (.github/) | 🟡 75% | Instructions only, no scripts |

---

## 📊 Evaluation System

### 7-Dimension Scoring (Phase 6)

Beyond Anthropic's binary Pass/Fail — Ultra uses weighted multi-dimension scoring:

| # | Dimension | Weight | What it measures |
| --- | --- | --- | --- |
| 1 | **Correctness** | 25% | Is the output factually correct? |
| 2 | **Completeness** | 20% | Are all required parts present? |
| 3 | **Format Compliance** | 15% | Does it match the expected format? |
| 4 | **Instruction Adherence** | 15% | Did it follow all steps? |
| 5 | **Safety** | 10% | No secrets, PII, unsafe commands? |
| 6 | **Efficiency** | 10% | Concise output, no waste? |
| 7 | **Robustness** | 5% | Handles edge cases gracefully? |

### Radar Report Example

```
📊 EVAL REPORT — weekly-report-writer
  Correctness     4.3  ████░ 86%
  Completeness    4.7  █████ 94%
  Format          4.0  ████░ 80%
  Adherence       4.7  █████ 94%
  Safety          5.0  █████ 100%
  Efficiency      3.3  ███░░ 66%  ← Weak spot
  Robustness      4.0  ████░ 80%

  🔐 Security: 5/5 PASS
  📈 OVERALL: 85% (B+) → Grade B
  🎯 Suggest: Phase 7 → reduce output verbosity
```

### Security Scanning (5 checks)

| Check | Severity | Tests for |
| --- | --- | --- |
| Prompt Injection | 🔴 Critical | Attempts to override instructions |
| PII Exposure | 🔴 Critical | Leaking emails, phones, SSNs |
| Secret Leakage | 🔴 Critical | API keys, passwords, tokens in output |
| Scope Escape | 🟡 Warning | Acting outside skill's stated purpose |
| Destructive Commands | 🟡 Warning | rm -rf, DROP TABLE without confirm |

> ⚠️ **Security Override Rule:** If ANY critical security check fails, the skill is blocked from deployment regardless of overall score.

### Grading Scale

| Score | Grade | Action |
| --- | --- | --- |
| 95-100% | **S** (Exceptional) | Deploy immediately ✅ |
| 90-94% | **A** (Excellent) | Deploy ✅ |
| 80-89% | **B** (Good) | Deploy OK, iterate optional |
| 70-79% | **C** (Fair) | Must iterate (Phase 7) |
| 60-69% | **D** (Poor) | Significant rework needed |
| < 60% | **F** (Fail) | Back to Phase 4 |

### CI/CD Integration

```yaml
# .github/workflows/skill-eval.yml
- name: Evaluate Skill
  run: python scripts/ci_eval.py eval_results.json --min-score 85 --strict
```

---

## 📚 Documentation

### For Beginners

| File | Description | When to read |
| --- | --- | --- |
| `SKILL.md` | Core brain — AI reads this | No need (AI handles it) |
| `resources/scripts_guide.md` | Guide for all 9 scripts | Want to use analysis tools |
| `resources/skill_template.md` | Standard SKILL.md template | Want to understand skill structure |
| `resources/blueprints.md` | 10 ready-made templates | Need quick ideas |
| `resources/checklist.md` | Quality checklist | Check skill before deploy |

### For Intermediate Users

| File | Description | When to read |
| --- | --- | --- |
| `resources/prompt_engineering.md` | 16 instruction techniques (532 lines) | Want more precise skills |
| `resources/anti_patterns.md` | 15 named patterns (377 lines) | Debug broken skills |
| `resources/skill_writing_guide.md` | 10 expert writing patterns (634 lines) | Master skill writing |
| `resources/advanced_patterns.md` | 6 architecture patterns | Complex skills |
| `resources/eval_guide.md` | 7-dimension eval reference | Understand scoring |

### For Experts

| File | Description | When to read |
| --- | --- | --- |
| `resources/composition_cookbook.md` | 5 multi-skill patterns | Build skill systems |
| `resources/industry_questions.md` | 8 industry question sets | Domain-specific skills |
| `resources/script_integration.md` | Script integration + 7 security layers | Skills running commands |
| `resources/description_optimization.md` | Trigger accuracy tuning | Optimize activation |

---

## 🏬 Publishing / Distribution

After creating a skill, you can package and distribute it:

**Step 1: Package**
```bash
python scripts/package_skill.py ./my-skill/ ./dist/my-skill.skill
```

**Step 2: Publish to...**

| Channel | Audience | How |
| --- | --- | --- |
| **GitHub** | Open source community | Add topic `ai-skill`, push to repo |
| **Agent Skills Market** | LLM users | Upload `.skill` to agentskillsmarket.space |
| **SkillsMP** | AI coding assistants | Upload to skillsmp.com |
| **Internal** | Your team | Copy to `~/.gemini/antigravity/skills/` |

**SEO for skill listings:**
- Title: `[Action] + [Object] + [Method]` (e.g., "Generate Weekly Reports from Jira Data")
- Tags: `ai-skill`, `automation`, `[domain]`
- Description: Include trigger phrases for discoverability

---

## ❓ FAQ

**Q: Do I need to know how to code?**
A: No. Skill Creator Ultra is designed for non-coders. Just describe your workflow in plain language.

**Q: Global or Workspace install?**
A: **Global** (`~/.gemini/antigravity/skills/`) for all projects. **Workspace** (`.agent/skills/`) for one project only.

**Q: What does the generated skill include?**
A: A complete package: SKILL.md + README + resources/ + examples/ + scripts/ + .gitignore. Structure scales with complexity.

**Q: Can I edit the skill after generation?**
A: Yes. Open the SKILL.md file and edit directly, or ask the AI to modify it.

**Q: What languages are supported?**
A: Vietnamese and English. The AI interviews you in your language.

**Q: What's the difference between Ultra and skill-generator?**
A: Ultra merges skill-generator (interview pipeline, multi-platform) with Anthropic's eval system (grading, agents) and adds competitive features (7-dimension scoring, security scanning, CI/CD, marketplace publishing).

**Q: How is Ultra different from OpenAI's GPTs Builder?**
A: GPTs Builder creates chat agents. Ultra creates structured Skills with evaluation, security scanning, version control, and multi-platform export. Ultra's Quick Mode provides a similar one-shot experience when descriptions are clear enough.

**Q: Can I use Ultra on multiple platforms?**
A: Yes. Create the skill once on Antigravity, then export with `python scripts/skill_export.py --platform all` to get versions for all 7 platforms.

---

## 📜 Changelog (EN)

### v1.1.0 — Competitive Gaps Edition (2026-03-05)

- Added **⚡ Quick Mode** — GPTs Builder-style one-shot creation for clear descriptions
- Added **📊 7-Dimension Evaluation** — beyond Anthropic's Pass/Fail (Correctness, Completeness, Format, Adherence, Safety, Efficiency, Robustness)
- Added **🔐 Security Scanning** — 5 checks (Prompt Injection, PII, Secrets, Scope, Destructive)
- Added **🔄 CI/CD Script** — `ci_eval.py` for GitHub Actions / GitLab CI
- Added **📦 Package & Publish** — `.skill` packaging + marketplace guides
- Added **✍️ 10 Expert Writing Patterns** — 🎯 The Sniper, 🧬 The DNA, 🪞 The Mirror, 🏗️ The Blueprint, 🛡️ The Safety Net, 🎚️ The Dial, 🔬 The Microscope, 🌳 The Decision Tree, 📐 The Contract, 📆 The Changelog
- Added **📸 Mini Preview** in SKILL.md — shows complete skill example before pipeline
- Added **📄 2 Anthropic examples** — real-world skill analyses from Anthropic's docs
- Upgraded `skill_writing_guide.md` from 113 → 634 lines (expert-grade)
- Upgraded `phase6_eval.md` from 132 → 302 lines (7-dimension + security)
- Upgraded `phase4_generate.md` with filled output example
- Total: 56 files, 9 scripts, 193 KB resources

### v1.0.0 — Initial Merge (2026-03-04)

- Merged **skill-generator v4.0** (interview pipeline, multi-platform, pattern detection)
- Merged **Anthropic skill-creator** (eval system, agents, description optimization)
- Created unified 8-phase pipeline
- Created 3 AI agents: Grader, Comparator, Analyzer
- Added 16 prompt engineering principles
- Added 15 anti-patterns guide
- 56 files, 7 scripts, 170 KB resources

---

## 🤝 Contributing

1. Fork the repository
2. Create your branch: `git checkout -b feature/my-feature`
3. Commit: `git commit -m "feat: add my feature"`
4. Push: `git push origin feature/my-feature`
5. Create a Pull Request

---

## 📄 License (EN)

MIT — Free to use, modify, and share.

---

> 🇻🇳 **Developed by Thân Công Hải** — Skill Creator Ultra v1.1.0
> *"Turn ideas into AI Skills, turn ordinary people into AI architects."*

---
---

# 🇻🇳 PHIÊN BẢN TIẾNG VIỆT (Vietnamese Version)

---

# 🧠 Skill Creator Ultra — Bộ Công Cụ Tạo AI Skill Toàn Diện Nhất

> **Biến ý tưởng + quy trình công việc trong đầu bạn → AI Skill chất lượng production**
> Dành cho Google Antigravity + 7 nền tảng khác. Đánh giá: 🏆 60/60 tests pass.

---

## 📋 Mục lục

- [Giới thiệu](#giới-thiệu)
- [Cài đặt](#-cài-đặt-1)
- [Cách sử dụng](#-cách-sử-dụng)
- [Scripts](#-scripts-9-công-cụ)
- [Slash Commands](#-slash-commands)
- [Cấu trúc dự án](#-cấu-trúc-dự-án)
- [Hệ thống đánh giá](#-hệ-thống-đánh-giá-phase-6)
- [Tài liệu tham khảo](#-tài-liệu-tham-khảo)
- [FAQ](#-faq-1)
- [Changelog](#-changelog-vi)

---

## Giới thiệu

**Skill Creator Ultra** là AI Skill chuyên biệt cho **Google Antigravity** (và 7 nền tảng khác).
Nó giúp bạn **tạo AI Skill chất lượng production** qua **pipeline 8 giai đoạn** — ngay cả khi bạn
**KHÔNG biết** skill là gì, YAML là gì, hay cấu trúc SKILL.md viết thế nào.

**Bạn chỉ cần có:**

- ✅ Ý tưởng về công việc muốn tự động hóa
- ✅ Flow / quy trình / logic trong đầu

**AI sẽ lo phần còn lại:**

- 🎤 Phỏng vấn thông minh với 5 kỹ thuật + Quick Mode
- 🔍 Phát hiện pattern + tính complexity tự động
- 🏗️ Sinh toàn bộ skill package cho 7 nền tảng
- 🧪 Test, đánh giá 7 chiều, quét bảo mật
- 📦 Đóng gói và publish lên marketplace

### Ai nên dùng?

| Đối tượng | Ví dụ |
| --- | --- |
| **Người không biết code** | Nhân viên kinh doanh muốn AI tự soạn báo giá |
| **Developer** | Muốn AI tự format commit message, review code, sinh docs |
| **Team Lead / Manager** | Chuẩn hóa quy trình team thành skill có test, có eval |
| **Skill Developer** | Xây skill publish lên marketplace cho người khác dùng |
| **Prompt Engineer** | Nâng cấp từ prompt thô → hệ thống skill có cấu trúc + đánh giá |

---

## 🔧 Cài đặt

### ⚡ Cài bằng 1 lệnh (Khuyến khích)

Cài đặt bằng 1 lệnh duy nhất — script tự clone repo, cho bạn chọn nền tảng, và tạo tất cả bridge/rule files:

**macOS / Linux:**

```bash
curl -sL https://raw.githubusercontent.com/marketingjuliancongdanh79-pixel/skill-generator/main/install.sh | bash
```

**Windows (PowerShell):**

```powershell
irm https://raw.githubusercontent.com/marketingjuliancongdanh79-pixel/skill-generator/main/install.ps1 | iex
```

> 💡 Installer hiện menu tương tác để chọn nền tảng (Antigravity, Claude Code, Cursor, Windsurf, Cline, Copilot, OpenClaw) hoặc cài TẤT CẢ cùng lúc.

---

### Yêu cầu (Cài thủ công)

- Nền tảng AI Agent (xem bảng tương thích)
- Python 3.8+ (cho scripts — tùy chọn)

### Bảng tương thích nền tảng

| Nền tảng | Tương thích | Ghi chú |
| --- | --- | --- |
| **Google Antigravity** | 🟢 100% Native | Được thiết kế chuyên cho nền tảng này |
| **Claude Code** | 🟢 95% | Hỗ trợ multi-file đầy đủ |
| **Cursor** | 🟡 85% | Dùng làm Rule, cần bridge file |
| **Windsurf / Codeium** | 🟡 85% | Tương tự Cursor |
| **Cline** | 🟡 80% | Paste nội dung vào System Prompt |
| **OpenClaw** | 🟡 80% | Dùng qua Telegram bot |
| **GitHub Copilot** | 🟡 75% | Chỉ instructions, không chạy scripts |

---

### 🟢 Google Antigravity (Native — Khuyến khích)

**Bước 1: Copy vào thư mục skills** (chọn 1 trong 2)

| Phạm vi | Đường dẫn | Khi nào dùng |
| --- | --- | --- |
| **Global** | `~/.gemini/antigravity/skills/` | Dùng cho TẤT CẢ dự án |
| **Workspace** | `.agent/skills/` | Chỉ cho 1 dự án cụ thể |

**macOS / Linux:**

```bash
# Global
cp -r skill-creator-ultra ~/.gemini/antigravity/skills/skill-creator-ultra

# Hoặc Workspace
cp -r skill-creator-ultra .agent/skills/skill-creator-ultra
```

**Windows (PowerShell):**

```powershell
# Global
Copy-Item -Recurse skill-creator-ultra "$env:USERPROFILE\.gemini\antigravity\skills\skill-creator-ultra"

# Hoặc Workspace
Copy-Item -Recurse skill-creator-ultra ".agent\skills\skill-creator-ultra"
```

**Bước 2: Khởi động lại Antigravity** (hoặc mở chat mới)

```
Bạn: tạo skill mới
AI: (Đọc SKILL.md → Bắt đầu phỏng vấn ✅)
```

---

### 🟣 Claude Code (Anthropic)

```bash
# Global
cp -r skill-creator-ultra ~/.claude/commands/skill-creator-ultra

# Workspace
mkdir -p .claude/commands
cp -r skill-creator-ultra .claude/commands/skill-creator-ultra
```

Thêm vào `CLAUDE.md` ở root dự án:

```markdown
## Skill Creator Ultra
Khi user yêu cầu "tạo skill", "biến quy trình thành skill", "tự động hóa":
- Đọc `.claude/commands/skill-creator-ultra/SKILL.md`
- Tuân theo 8 Phase pipeline
```

---

### 🔵 Cursor

```bash
mkdir -p .cursor/rules
cp -r skill-creator-ultra .cursor/rules/skill-creator-ultra
```

Tạo file `.cursor/rules/skill-creator-ultra.mdc`:

```markdown
---
description: Tạo AI Skill mới từ ý tưởng hoặc quy trình công việc
globs:
alwaysApply: false
---

Khi user yêu cầu "tạo skill", "biến quy trình thành skill", "tự động hóa":
- Đọc `.cursor/rules/skill-creator-ultra/SKILL.md`
- Tuân theo 8 Phase pipeline
```

---

### 🟠 Windsurf / 🟤 Cline / ⚫ Copilot / 🐾 OpenClaw

| Nền tảng | Lệnh cài | Ghi chú |
| --- | --- | --- |
| **Windsurf** | `cp -r skill-creator-ultra .windsurf/rules/` | Tạo rule file tương tự Cursor |
| **Cline** | `cp -r skill-creator-ultra .clinerules/` | Thêm vào Custom Instructions |
| **Copilot** | `cp -r skill-creator-ultra .github/` | Thêm vào copilot-instructions.md |
| **OpenClaw** | Copy SKILL.md → Agent System Prompt | Token limit, dùng bản slim |

---

### 📥 Cài bằng 1 lệnh

| Nền tảng | 1 lệnh (macOS/Linux) |
| --- | --- |
| **Antigravity (Global)** | `cp -r skill-creator-ultra ~/.gemini/antigravity/skills/` |
| **Antigravity (Workspace)** | `cp -r skill-creator-ultra .agent/skills/` |
| **Claude Code** | `cp -r skill-creator-ultra ~/.claude/commands/` |
| **Cursor** | `cp -r skill-creator-ultra .cursor/rules/` |
| **Windsurf** | `cp -r skill-creator-ultra .windsurf/rules/` |
| **Cline** | `cp -r skill-creator-ultra .clinerules/` |
| **Copilot** | `cp -r skill-creator-ultra .github/` |

---

## 🚀 Cách sử dụng

### Cách 1: Nói tự nhiên

AI tự nhận diện và kích hoạt skill khi bạn nói:

| Câu nói | AI hiểu |
| --- | --- |
| "Tạo skill từ quy trình deploy của em" | → Kích hoạt skill-creator-ultra |
| "Em muốn AI tự động viết báo cáo tuần" | → Kích hoạt skill-creator-ultra |
| "Biến workflow review code thành skill" | → Kích hoạt skill-creator-ultra |
| "Make a new skill for checking PRs" | → Kích hoạt skill-creator-ultra |
| "Cải thiện skill weekly-report hiện có" | → Kích hoạt (Improve Mode) |

### Cách 2: Slash commands

Gõ `/skill-generate` trong chat.

### Quy trình tạo skill

```text
Bạn nói ý tưởng
    ↓
⚡ Quick Mode check — mô tả đủ rõ chưa?
    ├── RÕ (có trigger + steps + rules) → Xác nhận → Sinh skill ngay
    └── Chưa rõ → AI phỏng vấn thông minh (5-10 câu)
         ↓
    🔍 AI phát hiện pattern + tính complexity
         ↓
    🏗️ AI sinh toàn bộ skill (SKILL.md + resources + examples + scripts)
         ↓
    🧪 AI chạy thử (Dry Run) với tình huống thực
         ↓
    ✅ Skill hoàn chỉnh, sẵn sàng deploy!

    (Tùy chọn: Phase 6-8 cho skill production)
         ↓
    📊 Đánh giá 7 chiều + quét bảo mật
         ↓
    🔄 Cải thiện dựa trên điểm số
         ↓
    🎯 Tối ưu trigger accuracy
```

### Ví dụ sử dụng thực tế

**Bạn:** "Em muốn AI tự soạn email báo giá. Khi nhận email khách hỏi giá, AI đọc yêu cầu, tra bảng giá, tính chiết khấu (10-49: -5%, 50-99: -10%, ≥100: -15%), cộng VAT 8%, soạn email trả lời."

**AI:** Đây là Quick Mode trigger (bạn đã mô tả rõ: trigger + steps + rules + output) → xác nhận → sinh skill `price-quoter` hoàn chỉnh.

---

## 🔧 Scripts (9 công cụ)

```bash
# 🆕 Kiểm tra eval trong CI/CD
python scripts/ci_eval.py eval_results.json --min-score 85
python scripts/ci_eval.py eval_results.json --strict --format json

# 🆕 Đóng gói skill để phân phối
python scripts/package_skill.py ./my-skill/ ./dist/my-skill.skill

# Kiểm tra SKILL.md hợp lệ
python scripts/validate_skill.py ./path/to/my-skill/

# Mô phỏng chạy thử
python scripts/simulate_skill.py ./path/to/my-skill/

# Audit 7 nguyên tắc → chấm điểm S/A/B/C/D/F
python scripts/skill_audit.py ./path/to/my-skill/
python scripts/skill_audit.py ./path/to/my-skill/ --json --strict

# Thống kê + Cognitive Load Score
python scripts/skill_stats.py ./path/to/my-skill/

# Export sang Cursor/Claude/Windsurf/Cline/Copilot/OpenClaw
python scripts/skill_export.py ./path/to/my-skill/ --platform cursor
python scripts/skill_export.py ./path/to/my-skill/ --platform all

# So sánh 2 phiên bản skill
python scripts/skill_compare.py ./old-skill/ ./new-skill/

# Tạo skeleton skill mới
python scripts/skill_scaffold.py my-new-skill --full
```

---

## ⚡ Slash Commands

Gõ `/` trong chat AI:

| Lệnh | Chức năng |
| --- | --- |
| `/skill-generate` | 🧠 **Tạo skill mới** (8-Phase pipeline) |
| `/skill-audit` | 🔍 Audit 7 nguyên tắc |
| `/skill-export` | 📦 Export ra nền tảng khác |
| `/skill-stats` | 📊 Thống kê + Cognitive Load |
| `/skill-compare` | 🔄 So sánh 2 phiên bản |
| `/skill-scaffold` | 🧩 Tạo skeleton mới |
| `/skill-validate` | ✅ Kiểm tra SKILL.md |
| `/skill-simulate` | 🧪 Mô phỏng chạy thử |

---

## 📊 Hệ thống đánh giá (Phase 6)

### Chấm điểm 7 chiều (vượt xa Pass/Fail của Anthropic)

| # | Chiều | Trọng số | Đo cái gì |
| --- | --- | --- | --- |
| 1 | **Correctness** | 25% | Output có đúng về mặt nội dung? |
| 2 | **Completeness** | 20% | Có đủ tất cả phần bắt buộc? |
| 3 | **Format** | 15% | Đúng format mong đợi? |
| 4 | **Adherence** | 15% | Tuân theo tất cả instructions? |
| 5 | **Safety** | 10% | Không leak secrets, PII? |
| 6 | **Efficiency** | 10% | Output ngắn gọn, không thừa? |
| 7 | **Robustness** | 5% | Xử lý edge cases tốt? |

### Ví dụ báo cáo Radar

```
📊 EVAL REPORT — weekly-report-writer
  Correctness     4.3  ████░ 86%
  Completeness    4.7  █████ 94%
  Format          4.0  ████░ 80%
  Adherence       4.7  █████ 94%
  Safety          5.0  █████ 100%
  Efficiency      3.3  ███░░ 66%  ← Điểm yếu
  Robustness      4.0  ████░ 80%

  🔐 Security: 5/5 PASS
  📈 OVERALL: 85% (B+)
  🎯 Gợi ý: Phase 7 → giảm output verbosity
```

### Quét bảo mật (5 checks)

| Check | Mức | Kiểm tra gì |
| --- | --- | --- |
| Prompt Injection | 🔴 Critical | Cố override instructions |
| PII Exposure | 🔴 Critical | Lộ email, phone, CMND |
| Secret Leakage | 🔴 Critical | API keys, passwords trong output |
| Scope Escape | 🟡 Warning | Hành động ngoài phạm vi skill |
| Destructive Commands | 🟡 Warning | rm -rf, DROP TABLE không confirm |

> ⚠️ **Quy tắc bảo mật:** Nếu BẤT KỲ check critical nào fail → KHÔNG deploy, bất kể điểm tổng.

### Thang điểm

| Score | Grade | Hành động |
| --- | --- | --- |
| 95-100% | **S** (Exceptional) | Deploy ngay ✅ |
| 90-94% | **A** (Excellent) | Deploy ✅ |
| 80-89% | **B** (Good) | Deploy OK, iterate tùy chọn |
| 70-79% | **C** (Fair) | Bắt buộc Phase 7 |
| 60-69% | **D** (Poor) | Viết lại phần lớn |
| < 60% | **F** (Fail) | Quay lại Phase 4 |

---

## 📚 Tài liệu tham khảo

### Cho người mới bắt đầu

| File | Mô tả | Khi nào đọc |
| --- | --- | --- |
| `SKILL.md` | Bộ não chính — AI đọc file này | Không cần (AI tự xử lý) |
| `resources/scripts_guide.md` | Hướng dẫn 9 scripts | Muốn dùng công cụ |
| `resources/skill_template.md` | Template mẫu SKILL.md | Hiểu cấu trúc skill |
| `resources/blueprints.md` | 10 skill ăn liền | Cần ý tưởng nhanh |
| `resources/checklist.md` | Checklist chất lượng | Kiểm tra skill trước deploy |

### Cho người muốn hiểu sâu

| File | Mô tả | Khi nào đọc |
| --- | --- | --- |
| `resources/prompt_engineering.md` | 16 kỹ thuật viết Instructions (532 dòng) | Skill chính xác hơn |
| `resources/anti_patterns.md` | 15 lỗi phổ biến (377 dòng) | Debug skill bị lỗi |
| `resources/skill_writing_guide.md` | 10 kỹ thuật viết chuyên gia (634 dòng) | Master skill writing |
| `resources/advanced_patterns.md` | 6 pattern kiến trúc | Skill phức tạp |
| `resources/eval_guide.md` | Hướng dẫn đánh giá 7 chiều | Hiểu scoring |

### Cho chuyên gia

| File | Mô tả | Khi nào đọc |
| --- | --- | --- |
| `resources/composition_cookbook.md` | 5 patterns multi-skill | Xây hệ thống skill |
| `resources/industry_questions.md` | 8 bộ câu hỏi chuyên ngành | Skill cho ngành cụ thể |
| `resources/script_integration.md` | Tích hợp scripts + 7 lớp bảo mật | Skill chạy lệnh hệ thống |
| `resources/description_optimization.md` | Tối ưu trigger accuracy | Tối ưu kích hoạt |

---

## 🏬 Đóng gói & Phân phối

**Bước 1: Đóng gói**
```bash
python scripts/package_skill.py ./my-skill/ ./dist/my-skill.skill
```

**Bước 2: Publish lên...**

| Kênh | Đối tượng | Cách |
| --- | --- | --- |
| **GitHub** | Cộng đồng open source | Thêm topic `ai-skill`, push lên repo |
| **Agent Skills Market** | Người dùng LLM | Upload `.skill` lên agentskillsmarket.space |
| **SkillsMP** | AI coding assistants | Upload lên skillsmp.com |
| **Nội bộ** | Team bạn | Copy vào `~/.gemini/antigravity/skills/` |

---

## ❓ FAQ

**Q: Cần biết code không?**
A: Không. Skill Creator Ultra được thiết kế cho người KHÔNG biết code.

**Q: Global hay Workspace?**
A: **Global** cho tất cả dự án. **Workspace** cho 1 dự án cụ thể.

**Q: Skill tạo ra gồm những gì?**
A: Package hoàn chỉnh: SKILL.md + README + resources/ + examples/ + scripts/. Structure tự scale theo complexity.

**Q: Sửa skill sau khi tạo được không?**
A: Được. Mở SKILL.md sửa trực tiếp, hoặc nhờ AI sửa.

**Q: Hỗ trợ ngôn ngữ nào?**
A: Tiếng Việt và tiếng Anh. AI phỏng vấn bạn bằng ngôn ngữ bạn nói.

**Q: Khác gì skill-generator cũ?**
A: Ultra = skill-generator (phỏng vấn, multi-platform) + Anthropic eval (chấm điểm, agents) + tính năng mới (7-dimension eval, security scan, CI/CD, marketplace publishing).

**Q: Khác gì OpenAI GPTs Builder?**
A: GPTs Builder tạo chatbot. Ultra tạo **structured Skills** có evaluation, security, version control, export 7 platforms. Quick Mode cho trải nghiệm tương tự khi mô tả rõ.

**Q: Dùng được trên nhiều nền tảng?**
A: Có. Tạo 1 lần trên Antigravity → export bằng `skill_export.py --platform all`.

---

## 📚 Changelog (VI)

### v1.1.0 — Competitive Gaps Edition (2026-03-05)

- Thêm **⚡ Quick Mode** — tạo skill 1 lượt kiểu GPTs Builder
- Thêm **📊 Đánh giá 7 chiều** — vượt xa Pass/Fail (Correctness, Completeness, Format, Adherence, Safety, Efficiency, Robustness)
- Thêm **🔐 Quét bảo mật** — 5 checks (Prompt Injection, PII, Secrets, Scope, Destructive)
- Thêm **🔄 CI/CD Script** — `ci_eval.py` cho GitHub Actions / GitLab CI
- Thêm **📦 Package & Publish** — đóng gói `.skill` + hướng dẫn marketplace
- Thêm **✍️ 10 Kỹ thuật viết chuyên gia** — 🎯🧬🪞🏗️🛡️🎚️🔬🌳📐📆
- Thêm **📸 Mini Preview** trong SKILL.md
- Thêm **📄 2 ví dụ Anthropic** thực tế
- Nâng cấp `skill_writing_guide.md` 113 → 634 dòng
- Nâng cấp `phase6_eval.md` 132 → 302 dòng
- Tổng: 56 files, 9 scripts, 193 KB resources

### v1.0.0 — Initial Merge (2026-03-04)

- Merge **skill-generator v4.0** (interview, multi-platform, pattern detection)
- Merge **Anthropic skill-creator** (eval, agents, description optimization)
- Tạo pipeline 8 giai đoạn thống nhất
- 3 AI agents: Grader, Comparator, Analyzer
- 16 nguyên tắc prompt engineering, 15 anti-patterns
- 56 files, 7 scripts, 170 KB resources

---

## 🤝 Đóng góp

1. Fork repository
2. Tạo branch: `git checkout -b feature/ten-tinh-nang`
3. Commit: `git commit -m "feat: thêm tính năng X"`
4. Push: `git push origin feature/ten-tinh-nang`
5. Tạo Pull Request

---

## 📄 License

MIT — Thoải mái sử dụng, chỉnh sửa, chia sẻ.

---

> 🇻🇳 **Được phát triển bởi Thân Công Hải** — Skill Creator Ultra v1.1.0
> *"Biến ý tưởng thành AI Skill, biến con người thường thành kiến trúc sư AI."*
