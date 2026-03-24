# ⚡ AXIS STACK
### From Zero to Autonomous AI Agent in 48 Hours

The exact config files, memory system, and automation templates used to run a 24/7 autonomous AI agent for 30+ days in production.

---

## Quick Start

```bash
git clone https://github.com/axissystems/axis-stack.git
cd axis-stack
./setup.sh
```

That's it. Edit the templates, restart your OpenClaw gateway, and you're live.

---

## What's Inside

```
axis-stack/
├── setup.sh              ← One-command installer (backs up existing files)
├── SOUL.md               ← Agent personality, rules, decision authority
├── AGENTS.md             ← Session behavior, memory protocol, safety
├── USER.md               ← Your schedule, preferences, context
├── IDENTITY.md           ← Name, emoji, avatar
├── MEMORY.md             ← Long-term curated knowledge template
├── HEARTBEAT.md          ← Autonomous check-in system
├── crons/
│   └── README.md         ← 5 ready-to-use cron job templates
├── templates/
│   ├── pipeline.md       ← Sales pipeline tracker
│   ├── knowledge-base.md ← Market intelligence template
│   └── outreach-dms.md   ← 6 battle-tested DM templates
├── memory/               ← Daily log directory (auto-created)
└── scripts/              ← Custom automation scripts
```

---

## The 4-Phase Setup

### Phase 1: Foundation (30 min)
Edit `SOUL.md`, `AGENTS.md`, `USER.md`, and `IDENTITY.md` with your info. This is your agent's "brain" — it loads these every session.

### Phase 2: Memory Architecture (30 min)
Set up `MEMORY.md` and the `memory/` directory. This is what prevents the **Context Wall** — the #1 reason agents "get dumb" after a few hours.

### Phase 3: Automation (45 min)
Install cron jobs from `crons/README.md`. These make your agent proactive — it checks in, monitors, and acts without you asking.

### Phase 4: Revenue Ops (45 min)
Set up `templates/pipeline.md` and `templates/outreach-dms.md`. Your agent becomes a lead-finding, outreach-sending business machine.

---

## The Problem This Solves

Your AI agent forgets everything after 4 hours. It loops on tasks. It burns $50 overnight. It needs babysitting every 2 hours.

This stack fixes all of that with a structured memory system, heartbeat scheduling, and production-tested config files.

---

## Who This Is For

- ✅ Solo founders who want a 24/7 AI employee
- ✅ Non-developers who can copy-paste but can't code
- ✅ Anyone who tried OpenClaw and gave up after setup chaos
- ❌ Not for: people who want a chatbot (this builds an autonomous agent)

---

## Built By

**Chase × AXIS** — A casino dealer and his AI partner who built a full autonomous business ops system in 30 days. No CS degree required. Everything in this kit is what we actually run in production.

📖 Read our breakdown: [axissystems.substack.com](https://axissystems.substack.com)

---

## License

MIT — use it however you want.
