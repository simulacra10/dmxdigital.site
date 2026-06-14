# 004 — Work section: Your Good News

**Date:** 2026-06-06
**Status:** Complete

## What changed

Added a new "Work" section (`id="portfolio"`) to the main page, inserted between the "What I build" section and the Contact/CTA section.

**HTML:** `index.html`
- New `<section id="portfolio">` with `.wrap.letter` layout matching page rhythm
- Section kicker: "Work" · h2: "Built by DMX Digital"
- Entry: Live project label, h3 title linked to yourgood.news, descriptor line, OG image, three-paragraph body copy, footer link

**CSS:** `assets/css/site.css`
- Added `.portfolio-label` — small uppercase label for "Live project"
- Added `.portfolio-meta` — small muted descriptor for project metadata line

**Image:** `assets/img/your-good-news-og.png`
- Downloaded OG image (1200×630 PNG) from yourgood.news at build time and stored locally

## Architecture reference

Based on handoff doc: `/home/norm/Downloads/dmxdigital-work-section-architecture.md`

## What was not done

- No navigation anchor added (not required per spec)
- No projects page pointer (separate document per spec)
