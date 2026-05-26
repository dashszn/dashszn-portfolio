# AGENTS.md — Dashszn.dev

## Project Identity

Dashszn.dev is the personal portfolio website of Danish Syazani, also known as Dash.

It is a modern Astro-based website focused on presenting Danish's software engineering background, full-stack development direction, AI curiosity, creative technology interests, education, experience, and future career direction.

This project should feel professional, clean, personal, and future-ready while staying honest about the current v1 scope.

---

## Read These Files First

Before making changes, read these files in order:

1. `README.md`
2. `docs/PROJECT_BRIEF.md`
3. `docs/CODEX_HANDOFF.md`
4. `docs/CONTENT_STRATEGY.md`
5. `docs/DESIGN_DIRECTION.md`
6. `docs/AGILE_PLAN.md`
7. `docs/DEPLOYMENT_PLAN.md`
8. `docs/FUTURE_ROADMAP.md`
9. `docs/VISUAL_UPGRADE_PLAN.md`
10. `docs/IMAGE_ASSET_PLAN.md`
11. `docs/IMAGE_AND_VISUAL_SYSTEM.md`
12. `docs/CODEX_VISUAL_TASK.md`

If any referenced file does not exist yet, say which file is missing and continue with the available documentation.

---

## First Task Rule

When first entering this repository, do not immediately edit files.

First summarize:

1. What this project is.
2. Current tech stack and architecture.
3. Current website sections.
4. Current design direction.
5. Privacy and content rules.
6. Image and asset strategy.
7. Deployment setup.
8. The safest next implementation phase.

Wait for Danish's approval before editing.

---

## Tech Stack

Current stack:

- Astro
- React
- TypeScript
- Tailwind CSS
- pnpm
- GitHub Pages

Current deployment:

- GitHub Pages through GitHub Actions

Future deployment:

- Cloudflare Pages as the main production deployment

Possible future backend stack:

- Cloudflare Workers
- Hono
- Cloudflare D1
- Cloudflare R2
- Cloudflare KV
- Cloudflare Turnstile

Do not add the future backend stack unless explicitly requested.

---

## Current Website Sections

The current v1 website includes:

- Home
- About
- Skills
- Experience
- Education
- Direction
- Projects & Lab
- Contact

The site should remain understandable for technical and non-technical visitors.

---

## Current Project Structure

Expected structure:

```txt
dashszn-portfolio/
├── .github/
│   └── workflows/
├── docs/
├── public/
├── scripts/
├── src/
│   ├── components/
│   │   ├── common/
│   │   ├── layout/
│   │   ├── sections/
│   │   └── ui/
│   ├── data/
│   ├── layouts/
│   ├── pages/
│   ├── styles/
│   └── utils/
├── AGENTS.md
├── astro.config.mjs
├── package.json
├── pnpm-lock.yaml
├── README.md
└── tsconfig.json
```

Image-related folders may be added according to `docs/IMAGE_ASSET_PLAN.md`.

---

## Design Direction

The visual direction is called:

```txt
Cyber Zen / Aqua Night
```

The site should feel:

- Dark themed
- Futuristic but calm
- Japanese-inspired but not overly anime
- Professional
- Personal
- Clean
- Recruiter-friendly
- Easy to understand
- Fast and responsive

The design inspiration includes:

- Large personal hero section
- Aqua glow effects
- Dark cyan background
- Mint/cyan accents
- Floating code/system cards
- Rounded glass-like panels
- Compact dashboard-style sections
- Clean tech stack badges
- Subtle Japanese-inspired atmosphere

Do not copy any reference image exactly. Use it only as inspiration.

---

## Color Palette

Use this palette as the visual foundation:

| Name | Hex |
|---|---|
| Mint Cream | `#F2FFF6` |
| Tea Green | `#CAFFDE` |
| Sky Aqua | `#25C5E9` |
| Dark Cyan | `#238689` |
| Ink Black | `#021725` |

Suggested roles:

- `#021725` as the main background.
- `#F2FFF6` as main bright text.
- `#CAFFDE` as soft glow/highlight.
- `#25C5E9` as primary accent.
- `#238689` as secondary accent and border/glow support.

---

## Content Rules

Do not add:

- Fake projects
- Fake certificates
- Fake achievements
- Public CGPA
- Phone number
- Full home address
- IC/passport number
- Private documents
- Transcript
- Backend/auth/database/admin dashboard unless explicitly requested
- Broken image links
- Heavy dependencies without approval

Do keep:

- Honest current profile
- Clean readable content
- Non-technical visitor friendliness
- Recruiter-friendly wording
- Privacy-conscious presentation
- Compact and complete v1 scope

---

## Personal Information Rules

Allowed public-facing information:

- Public name: Danish Syazani
- Nickname/brand: Dash
- General location: Cyberjaya, Selangor, Malaysia
- Education history
- Work experience at Elmina Tech
- Skills
- Languages
- Interests
- Professional email
- GitHub
- LinkedIn when provided

Do not expose:

- CGPA
- Phone number
- Full home address
- Private documents
- Sensitive IDs
- Anything not already approved for public portfolio use

---

## Image Rules

Images should follow:

```txt
docs/IMAGE_ASSET_PLAN.md
docs/IMAGE_AND_VISUAL_SYSTEM.md
```

Final optimized images should go under:

```txt
public/assets/images/profile/
public/assets/images/education/
public/assets/images/experience/
public/assets/images/projects/
public/assets/images/illustrations/
public/assets/images/backgrounds/
```

Raw images belong under:

```txt
assets-raw/
```

Raw images should usually not be committed unless Danish explicitly approves.

If image files are missing, components must show polished fallbacks instead of broken images.

Do not assume images exist.

Do not generate images.

Do not use all images randomly. Use only curated images that support the story.

---

## Recommended Final Image Names

Profile:

```txt
public/assets/images/profile/danish-portrait.webp
public/assets/images/profile/danish-casual.webp
public/assets/images/profile/danish-workspace.webp
```

Education:

```txt
public/assets/images/education/danish-msu-graduation.webp
public/assets/images/education/danish-utm-graduation.webp
public/assets/images/education/utm-mjiit-campus.webp
public/assets/images/education/msu-campus.webp
public/assets/images/education/smk-bukit-jelutong.webp
```

Experience:

```txt
public/assets/images/experience/elmina-tech-workplace.webp
public/assets/images/experience/elmina-tech-shop.webp
public/assets/images/experience/elmina-tech-social-media.webp
```

Projects:

```txt
public/assets/images/projects/dashszn-portfolio-thumbnail.webp
```

Only add project images for real projects.

---

## Development Commands

Use these commands before finishing work:

```bash
pnpm build
pnpm check
pnpm format:check
git status
```

Use formatting when needed:

```bash
pnpm format
```

Run local development server:

```bash
pnpm dev
```

Build output directory:

```txt
dist
```

---

## Git Rules

Do not commit unless Danish explicitly asks.

When asked to commit, use clear Conventional Commit messages.

Examples:

```bash
git commit -m "feat: upgrade hero visual layout"
git commit -m "chore: add image asset folders"
git commit -m "docs: update visual system plan"
git commit -m "fix: improve mobile spacing"
```

Do not push unless Danish asks or the current workflow explicitly requires it.

Always show or summarize `git status` after changes.

---

## Deployment Rules

The current GitHub Pages deployment uses:

```txt
.github/workflows/deploy-github-pages.yml
```

Astro config is currently set for GitHub Pages project deployment:

```js
site: 'https://dashszn.github.io',
base: '/dashszn-portfolio',
```

Do not break GitHub Pages deployment.

If preparing Cloudflare Pages later, note that the base path may need environment-specific handling.

Do not change deployment config unless explicitly requested.

---

## Dependency Rules

Do not add new dependencies unless they are necessary and clearly justified.

Prefer:

- CSS
- Tailwind utilities
- Astro components
- Inline SVG icons

Avoid:

- Heavy animation libraries
- Large icon libraries unless approved
- Backend libraries unless requested
- CMS/auth/database dependencies unless requested

---

## UI / UX Rules

Keep the website:

- Responsive
- Readable
- Lightweight
- Visually polished
- Easy to navigate
- Friendly for non-technical visitors
- Professional for recruiters

Recommended UI improvements:

- Better hero visual layout
- Aqua/mint glow effects
- Subtle grid background
- Hover lift on cards
- Hover glow on buttons
- Skill icons
- Image-ready cards with fallbacks
- Clear section hierarchy

Avoid:

- Heavy scroll effects
- Cursor trails
- Too many animations
- Overly anime or game-like UI
- Cluttered sections
- Fake content

---

## Accessibility Rules

Maintain:

- Good text contrast
- Clear navigation
- Recognizable buttons and links
- Meaningful alt text for real images
- No excessive motion
- Mobile readability

Do not use very tiny low-contrast text.

Do not rely only on color to communicate meaning.

---

## Codex Task Workflow

Use this workflow:

1. Read `AGENTS.md`.
2. Read all referenced docs.
3. Summarize the project first.
4. Wait for approval.
5. Make focused changes only.
6. Run checks.
7. Explain what changed.
8. Do not commit unless asked.

---

## Recommended First Codex Prompt

When Danish starts Codex, he may ask:

```txt
Read AGENTS.md and every documentation file it references.

Do not modify files yet.

First summarize:
1. What this project is.
2. Current tech stack and architecture.
3. Current website sections.
4. Current design direction.
5. Privacy and content rules.
6. Image and asset strategy.
7. Deployment setup.
8. The safest next implementation phase.

After summarizing, wait for my approval before editing.
```

---

## Recommended Visual Upgrade Prompt

After project understanding is confirmed:

```txt
Now implement only the visual and image system upgrade described in docs/CODEX_VISUAL_TASK.md.

Do not generate images.
Do not add fake projects.
Do not add fake certificates.
Do not expose CGPA, phone number, or full address.
Do not add backend, auth, or database.
Do not commit changes.

Run:
pnpm build
pnpm check
pnpm format:check

Then explain what changed and wait for my review.
```

---

## Definition of Done

A task is done only when:

- The requested change is implemented.
- No fake/private content was added.
- The site remains responsive.
- `pnpm build` passes.
- `pnpm check` passes.
- `pnpm format:check` passes.
- Git status is reviewed.
- The result is explained clearly.
- No commit is made unless Danish asked for it.

---

## Important Reminder

This portfolio is intentionally being built step by step.

Do not try to build the final dream version in one pass.

Prioritize:

```txt
Clean foundation → visual polish → image system → real content → deployment → future dynamic features
```
