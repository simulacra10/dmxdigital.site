# Change 001 — Add About Page

**Status:** Complete  
**Opened:** 2026-05-30

## Description

Add an `/about/` page to the site introducing Norman Bauer and the story behind DMX Digital.

## Rationale

An about page gives prospective clients context on who they are hiring — solo operator, background, approach — which supports trust and credibility.

## Scope

Files to create:

- `about/index.html` — new about page
- `docs/about/index.html` — minified/published copy

Files to update:

- `assets/css/site.css` — any about-specific styles needed
- `assets/css/site.min.css` — minified update
- `docs/assets/css/site.min.css` — published minified update
- `sitemap.xml` — add `/about/` URL
- `docs/sitemap.xml` — published copy
- Navigation on `index.html` and `starter-website-package/index.html` — add About link

## Decisions

- [ ] Confirm nav placement for About link
- [ ] Confirm whether About gets its own nav entry on the starter package page

## Log

- 2026-05-30 — Plan created. Awaiting copy from Norman.
- 2026-05-30 — Copy received. Built about/index.html with five sections: Background, What the shop taught me, How I work (Mike story), Now, and Contact CTA. Added norm-headshot.jpg (880×900) to hero via .about-hero CSS override. Added About nav link to homepage and starter-website-package page. Added /about/ to sitemap.xml. Added CSS version string to starter-website-package page (fixing pre-existing cache bug). Bumped CSS version to 20260530-about on all pages. Published via minify-site.sh.
