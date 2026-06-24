# Changelog

All notable changes to dmxdigital.site are recorded here.

---

## 2026-06-24

### Added

- `/contact/` page with phone, email, Keybase (icon + link), Session Messenger (QR code + Session ID), and PGP public key (downloadable `.asc` and one-click GPG WKD command)
- Web Key Directory (WKD) at `/.well-known/openpgpkey/` — enables `gpg --locate-key norm@dmxdigital.site` auto-discovery
- `assets/keys/norm-dmxdigital.asc` — downloadable PGP public key for norm@dmxdigital.site
- `assets/img/session-qr.svg` — QR code for Session Messenger ID
- `.nojekyll` — allows GitHub Pages to serve `.well-known/` without Jekyll filtering it out
- `keybase.txt` — Keybase identity verification file
- `BlogPosting` JSON-LD schema on article page (`datePublished: 2026-06-22`, `author`, `publisher`)
- `ProfessionalService` JSON-LD schema on homepage (`name`, `address`, `areaServed`, `email`, `telephone`, `founder`)
- `<link rel="alternate" type="text/plain">` on homepage `<head>` pointing to `dmx.txt`
- `/contact/` added to sitemap.xml

### Changed

- Contact nav link updated from `#contact` to `/contact/` on all pages
- About page nav updated from old flat structure to current dropdown (Work / About / Writing groups)
- About page OG and Twitter descriptions harmonized with meta description — same facts, social register
- Contact page title updated to "Contact DMX Digital | Easton, MD Web Design" for keyword signal

---

## 2026-06-14

### Added

- `auth.md` — agent registration manifest declaring anonymous public access
- `/.well-known/oauth-protected-resource` — RFC 9728 protected resource metadata
- `/.well-known/oauth-authorization-server` — OAuth AS metadata with `agent_auth` block
- `/.well-known/mcp/server-card.json` — MCP Server Card (SEP-1649) for agent discovery
- `/.well-known/agent-skills/index.json` — Agent Skills Discovery index (RFC v0.2.0)
- `/.well-known/agent-skills/dmxdigital-services/SKILL.md` — skill describing DMX Digital services
- WebMCP tools in `index.html` via `document.modelContext.registerTool()`: `get-site-info`, `get-services`, `get-contact`

---

## 2026-06-13

### Added

- `Content-Signal` directive to `robots.txt` declaring AI and search content usage preferences (`ai-train=yes, search=yes, ai-input=yes`)
- `/.well-known/api-catalog` (RFC 9727) for automated API discovery, cataloging the site's machine-readable resources in `application/linkset+json` format
- `docs/_headers` for Cloudflare Pages, setting correct `Content-Type` on `/.well-known/api-catalog`

---

## 2026-06-09

### Changed

- Phone number `(410) 934-7599` commented out in contact sections on homepage, about, and projects pages; contact line now shows email and location only

---

## 2026-06-06

### Added

- `/projects/` section with three new pages: index, `/projects/gopher/`, `/projects/emacs/`
- Projects index lists open source tools (embed-gopher, markdown-to-gopher, generate-gophermap.sh, Emacs config) with links to detail pages and GitHub
- Gopher Publishing Tools detail page (`/projects/gopher/`) covers the full workflow with embed-gopher screenshot, demo link, and GitHub links for each tool
- Emacs Config detail page (`/projects/emacs/`) — direct, unpretentious description of the personal init file
- Phone number `(410) 934-7599` added to contact sections on homepage, about, and projects pages as a `tel:` link
- Projects link added to nav on all pages
- "Work" portfolio section (`id="portfolio"`) on homepage, inserted between "What I build" and the Contact CTA — live project entry for Your Good News with OG image, body copy, and link
- `assets/img/your-good-news-og.png` — OG image for Your Good News (1200×630)
- `.portfolio-label` and `.portfolio-meta` CSS classes for portfolio entry layout

---

## 2026-05-31

### Added

- `.site-comparison` component on homepage (`#why` section) — two-column card grid comparing a simple site (dmxdigital.site) against a complex one (speed.dmxdigital.site) with metric bars, labels, and a spanning callout
- Expanded `#why` section copy: opening paragraph ("The site you are reading right now") and closing paragraphs framing the comparison for prospective clients

### Changed

- Removed "Why It Matters" anchor link from primary nav
- Ran Prettier on root-level `index.html` to make source human-readable; `docs/` output remains minified

---

## 2026-05-30

### Added

- `/about/` page with five sections: Background, What the shop taught me, How I work (Mike story), Now, and Contact CTA
- `assets/img/norm-headshot.jpg` (880×900) in about page hero
- `#speed-test` section on homepage, positioned after "The Impression You Control" — links to speed.dmxdigital.site with live preview image
- Speed Test nav link (opens in new tab)
- `.tool-preview-link` and `.tool-preview-img` CSS styles for speed test section
- `/about/` added to sitemap.xml

### Changed

- About link added to nav on homepage and starter-website-package

---

## 2026-05-08

### Changed

- Published directory moved to `docs/` for GitHub Pages
- Updated minify script (`minify-site.sh`)
- Fixed hero image

---

## 2026-04-26

### Added

- Sitemap.xml and robots.txt
- Open Graph metadata and og-image
- Favicon

### Changed

- Plain text page content and filename
- Site copy edits

---

## 2026-04-25

### Added

- Initial site launch
- CNAME for `dmxdigital.site`
