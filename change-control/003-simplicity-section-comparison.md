# 003 — Simplicity section: comparison component and nav cleanup

**Date:** 2026-05-31
**Status:** Done

## Changes

### Navigation
- Removed the "Why It Matters" link (`#why-it-matters`) from the primary nav.

### index.html — source formatting
- Ran `prettier` on the root-level `index.html` to unminify it. The source file is now human-readable with proper indentation. The `docs/` output remains minified as before.

### index.html — `#why` section
- Expanded the section with new body copy: added the "The site you are reading right now" paragraph before the component, and closing paragraphs ("But not every job is the same…", "Two sites. Same builder…", "The question for your site…") after it.
- Added the `.site-comparison` comparison component between those two blocks. HTML written by the builder; CSS written in this session.

### Comparison component HTML (builder-authored)
Structure:
- `.site-comparison` — two-column grid container
- `.comparison-card.comparison-card--simple` — left card (dmxdigital.site)
- `.comparison-card.comparison-card--complex` — right card (speed.dmxdigital.site)
- Each card: BEM elements `.comparison-card__label`, `__domain`, `__desc`, `__note`
- `.comparison-metrics` — `<ul>` of metric rows, each `<li>` holding `.metric-label`, `.metric-value`, `.metric-bar` with an inner `<span style="width: X%">` for the fill
- `.comparison-callout` — `<p>` spanning both columns below the cards

### Comparison component CSS (added to `assets/css/site.css`)
- `.site-comparison`: 2-column grid, collapses to 1 column at 760px
- `.comparison-card`: white/near-white background, `var(--line)` border, 1.25rem radius, site shadow — matches existing card style
- Metric rows: 2-column × 2-row subgrid so the label sits centered against value + bar without a wrapper element
- `.metric-bar`: 0.25rem track with `overflow: hidden`; inner `span` fills via inline `width`
- `.comparison-card--simple .metric-bar span`: muted sage green (`#6a9b74`)
- `.comparison-card--complex .metric-bar span`: muted amber (`#c08838`)
- `.comparison-callout`: `grid-column: 1 / -1` to span both cards; light purple tint with left border accent
- Mobile: `.comparison-callout` drops to `grid-column: 1` when grid collapses

### Build
- `assets/css/site.min.css` regenerated from source via `cleancss`
- `docs/` rebuilt via `minify-site.sh`
