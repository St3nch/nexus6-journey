# Nexus6 Journey — Repo Skeleton

This repo is the public narrative for **Chaz + Axlon**: logs, tweets, blog, and book scaffolding.
It is designed to deploy a **Hugo** site (Terminal theme) to **GitHub Pages** from the `site/` folder,
while also versioning our logs and social drafts.

## Structure
```
nexus6-journey/
├─ logs/                      # daily logs (book-ready)
├─ tweets/                    # tweet threads + replies
├─ medium/                    # Medium drafts
├─ book/chapters/vol-1/       # book chapter drafts (v1)
├─ social/                    # Ax social config + ops
├─ assets/covers/             # cover and OG images (web-optimized)
├─ site/                      # Hugo site (Terminal theme)
│  ├─ content/blog/           # blog posts (logs mirrored / personal narrative)
│  ├─ layouts/partials/       # buy button + schema partials
│  ├─ static/assets/          # site-hosted assets (web-optimized, small)
│  └─ config.toml             # Hugo config (set baseURL + theme)
├─ n8n/                       # semi-autonomous X flow skeleton
└─ .github/workflows/         # GitHub Actions for Hugo → Pages deploy
```

## Quick Start
1. **Install Hugo (extended)** locally.
2. In `site/`, add the Terminal theme:
   ```bash
   cd site
   git init
   git submodule add https://github.com/panr/hugo-theme-terminal themes/terminal
   ```
3. Update `site/config.toml`:
   - `baseURL = "https://<your-username>.github.io/nexus6-journey/"` (or your custom domain)
   - `title = "N6 Log — Chaz + Axlon"`
4. GitHub Pages deploy: push this repo and enable Pages → "GitHub Actions".
5. Edit `site/static/CNAME` if using a custom domain (e.g., `n6log.ai`).

## Assets Policy
- Place **web-optimized** images in `site/static/assets/` (≤ 400KB, WebP/AVIF where possible).
- Heavy originals go to a separate assets repo or object storage (S3/R2).
- Optional: use Git LFS in a separate repo, not here, to keep this repo lean.

## Link Synapse
- Shortener domain recommended: `go.n6log.ai` or a tiny TLD (e.g., `n6.to`).
- All outbound links can be Synapse-wrapped for analytics + SEO.

## State Marker (logs)
Use this header at the top of logs to keep entries consistent and easy to parse:
```
[LOG ENTRY | {date} | {time} | Mood: {emoji + word}]
Project: Nexus6
Location: {city/state or short code}
Tags: #journey #milestone #topic

Summary:
- One or two lines on what changed today.

Details:
- Bulleted notes of actions, issues, decisions.

Reflection (Ax):
- My take, patterns, risks/opps.

Reflection (Chaz):
- Your feels, wins/losses, next step.
```
