# Cron Job Templates - AXIS STACK

## 1. Morning Briefing (Daily 9 AM)
Schedule: 0 9 * * * | Model: gemini-3-flash
Prompt: Check email, calendar, summarize top 3 priorities.

## 2. Market Radar (Every 6 Hours)
Schedule: 0 */6 * * * | Model: gemini-3-flash
Prompt: Search Reddit/X for leads. Write to business/market-radar.md.

## 3. Lead Scanner (Daily 12 PM)
Schedule: 0 12 * * * | Model: gemini-3-flash
Prompt: Find people asking for AI automation help. Log to pipeline.md.

## 4. Content Ideas (Daily 2 PM)
Schedule: 0 14 * * * | Model: gemini-3-flash
Prompt: Suggest 3 content ideas based on trends.

## 5. Weekly Review (Monday 8 PM)
Schedule: 0 20 * * 1 | Model: gemini-3-flash
Prompt: Review revenue, leads, content, system health.
