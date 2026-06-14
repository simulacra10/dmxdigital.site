# Changelog

All notable changes to dmxdigital.site are recorded here.

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

---

## 2026-05-31

### Added

- Simplicity section with comparison component on homepage
- Nav cleanup across pages

---

## 2026-05-30

### Added

- Promoted `speed.dmxdigital.site` on homepage
- Linked Your Good News on about page
- About page and change-control directory

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
