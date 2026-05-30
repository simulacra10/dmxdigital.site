# Change 002 — Promote speed.dmxdigital.site on Homepage

**Status:** Complete  
**Opened:** 2026-05-30

## Description

Add a menu link and a prominent homepage section promoting the free website speed test tool at speed.dmxdigital.site.

## Rationale

The speed test tool was just deployed and needs visibility. Placing the section high on the homepage (immediately after "The Impression You Control") reinforces the core message — slow sites cost you customers — and gives visitors an immediate, free way to engage with DMX Digital.

## Scope

Files updated:

- `index.html` — added Speed Test nav link; added `#speed-test` section after `#why-it-matters`
- `assets/css/site.css` — added `.tool-preview-link` and `.tool-preview-img` styles
- `assets/css/site.min.css` — regenerated
- `docs/index.html` — published minified copy
- `docs/assets/css/site.min.css` — published minified copy

## Decisions

- Section placed after "The Impression You Control" (#why-it-matters) — second in page flow after hero — for maximum prominence.
- OG image served live from `https://speed.dmxdigital.site/opengraph-image` (Next.js edge-generated).
- Menu link opens in new tab (`target="_blank"`).
- CSS version bumped to `20260530-speed-test`.

## Log

- 2026-05-30 — Section added before #contact, then moved to after #why-it-matters per Norman's direction. Menu link added between About and Plain Text. CSS updated with tool preview styles. Published via minify-site.sh.
