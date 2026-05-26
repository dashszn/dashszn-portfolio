# Codex Next Task — Visual and Image System Upgrade

You are working inside the `dashszn-portfolio` repository.

## Read First

Before editing, read:

- README.md
- docs/CODEX_HANDOFF.md
- docs/CONTENT_STRATEGY.md
- docs/DESIGN_DIRECTION.md
- docs/VISUAL_UPGRADE_PLAN.md
- docs/IMAGE_ASSET_PLAN.md
- docs/IMAGE_AND_VISUAL_SYSTEM.md
- docs/AGILE_PLAN.md

## Goal

Upgrade Dashszn.dev visually based on the Cyber Zen / Aqua Night portfolio direction.

The current site is functional but too plain. Improve the visual quality while keeping it professional, clean, responsive, and honest.

## Palette

Use this palette:

- Mint Cream: `#F2FFF6`
- Tea Green: `#CAFFDE`
- Sky Aqua: `#25C5E9`
- Dark Cyan: `#238689`
- Ink Black: `#021725`

## Visual Direction

The site should feel:

- Dark themed.
- Futuristic but calm.
- Japanese-inspired but not overly anime.
- Personal but professional.
- Clean and recruiter-friendly.
- Easy to understand for non-technical visitors.
- Similar in mood to a premium dark cyan developer dashboard.

## Required Implementation

Implement the following safely:

1. Create image folder structure:

```txt
assets-raw/profile
assets-raw/education
assets-raw/experience
assets-raw/projects
assets-raw/references
public/assets/images/profile
public/assets/images/education
public/assets/images/experience
public/assets/images/projects
public/assets/images/illustrations
public/assets/images/backgrounds
public/assets/icons
scripts
```

2. Update `.gitignore` so `assets-raw/` is ignored.

3. Update global CSS with the Cyber Zen color variables and premium dark aqua background.

4. Improve cards, badges, buttons, timeline items, and navigation hover states.

5. Upgrade the Hero section:
   - More premium layout.
   - Portrait-ready card.
   - Floating code/system style cards.
   - Must not break if portrait image is missing.

6. Add optional image fields in data files where useful:
   - Profile image path.
   - Education image paths.
   - Experience image path.

7. Update components so optional images render only when available.

8. Add simple lightweight icons for skill groups using inline SVG or a minimal local helper.

9. Add a script template:

```txt
scripts/optimize-images.sh
```

This script can contain commented examples for converting raw images to WebP using `cwebp`.

10. Keep the site fully responsive.

## Strict Constraints

Do not add:

- Fake projects.
- Fake certificates.
- Public CGPA.
- Phone number.
- Full home address.
- Fake achievements.
- Backend.
- Authentication.
- Database.
- Heavy animation libraries unless clearly justified.
- Broken image links.
- Actual generated images.

## Important Image Rule

Do not assume images already exist.

If an image path is missing, the UI must display a polished fallback card, not a broken image icon.

## Required Checks

At the end, run:

```bash
pnpm build
pnpm check
pnpm format:check
git status
```

## Expected Response

After making changes, explain:

1. What files changed.
2. What visual improvements were made.
3. How image support works.
4. What checks passed.
5. Any recommendations before committing.

Do not commit changes unless explicitly asked.
