# Visual Upgrade Plan — Dashszn.dev

## Purpose

This document defines the next visual upgrade phase for Dashszn.dev.

The current website has a working v1 foundation, but the next phase is to make it more polished, personal, premium, and visually memorable while staying professional, lightweight, honest, and easy to understand for technical and non-technical visitors.

This document is meant to be read by Danish and by Codex before any visual implementation work begins.

---

## Current Status

Dashszn.dev currently has:

- Astro project foundation.
- React integration.
- TypeScript.
- Tailwind CSS.
- Reusable components.
- Data-driven sections.
- GitHub Pages deployment.
- Documentation and Codex handoff files.

The site is functional, but the design still needs stronger visual identity, better polish, image readiness, and more premium UI treatment.

---

## Visual Theme

Internal theme name:

```txt
Cyber Zen / Aqua Night
```

The design should feel:

- Dark themed.
- Clean.
- Futuristic but calm.
- Japanese-inspired but not overly anime.
- Personal but professional.
- Recruiter-friendly.
- Easy to understand for non-technical visitors.
- Fast and responsive.
- Similar in mood to a premium dark cyan developer dashboard.

---

## Main Color Palette

Use the color palette defined in `docs/IMAGE_AND_VISUAL_SYSTEM.md`.

| Name | Hex | Intended Use |
|---|---|---|
| Mint Cream | `#F2FFF6` | Main bright text and clean highlights |
| Tea Green | `#CAFFDE` | Soft glow, gentle highlight, positive accent |
| Sky Aqua | `#25C5E9` | Primary accent, active state, tech glow |
| Dark Cyan | `#238689` | Secondary accent, borders, muted glow |
| Ink Black | `#021725` | Main background |

The overall design should be dark and calm, with aqua/mint highlights used carefully.

---

## Design Goals

The upgraded website should include:

1. A stronger hero section.
2. A portrait-ready layout.
3. Aqua glow effects.
4. Floating code/system cards.
5. Better card hover states.
6. Better badge and button styling.
7. Skill cards with simple icons.
8. Optional image support with fallbacks.
9. Education and experience cards that can support images later.
10. Clean responsive layout.
11. A more premium developer-dashboard feel.
12. A subtle Japanese-inspired atmosphere without becoming cartoonish or game-like.

---

## Design Inspiration

The visual reference provided by Danish includes:

- Large hero section with portrait focus.
- Dark cyan background.
- Mint/aqua glow.
- Rounded glass-style cards.
- Floating code snippets.
- Floating system design card.
- Tech stack strip.
- Compact lower dashboard sections.
- Smooth, polished, modern UI.

Use this as inspiration only. Do not copy it exactly.

---

## Website Section Strategy

Current sections:

- Home
- About
- Skills
- Experience
- Education
- Direction
- Projects & Lab
- Contact

These sections can remain for now.

Possible future grouping:

```txt
Home
About
Skills
Journey
Projects
Contact
```

Where `Journey` can visually combine Experience, Education, and Direction.

Do not rename or restructure major sections unless explicitly requested.

---

## Hero Upgrade Direction

The hero should become the strongest visual area.

Recommended layout:

```txt
Left:
- Small badge: Software Engineer / Dashszn.dev
- Large name: Danish Syazani
- Role headline
- Short description
- Primary and secondary buttons

Right:
- Portrait-ready visual card
- Aqua glow behind portrait
- Floating code card
- Floating system/design mini card
- Tech stack strip or small tech chips
```

The hero must still work if no portrait image exists yet.

If `public/assets/images/profile/danish-portrait.webp` is missing, show a polished abstract identity card instead of a broken image.

---

## About Upgrade Direction

The About section should feel personal and readable.

Recommended layout:

```txt
Main card:
- About text
- Mission / personal direction

Side card:
- Languages
- Interests
- Location
- Creative side
```

Optional later image:

```txt
public/assets/images/profile/danish-workspace.webp
```

If missing, do not show a broken image.

---

## Skills Upgrade Direction

The Skills section should be visually easier to scan.

Add simple icons for skill groups:

| Skill Group | Icon Meaning |
|---|---|
| Software Development | Code |
| Web & App Development | Browser/window |
| AI & Research Foundations | Brain/circuit |
| Creative & Media | Camera |
| Professional & Business | Users/briefcase |

Use lightweight inline SVG icons or a small local helper component.

Do not add a heavy icon library unless clearly justified and approved.

---

## Experience Upgrade Direction

The Experience section can support an optional image later.

Potential image:

```txt
public/assets/images/experience/elmina-tech-workplace.webp
```

If the image is missing, render a polished fallback visual card.

Do not require the image to exist.

Do not add fake work details.

---

## Education Upgrade Direction

Education cards can support optional thumbnails later.

Potential images:

```txt
public/assets/images/education/danish-utm-graduation.webp
public/assets/images/education/danish-msu-graduation.webp
public/assets/images/education/smk-bukit-jelutong.webp
```

If images are missing, the timeline should remain clean and text-only.

Do not expose CGPA.

---

## Direction Upgrade Direction

The Direction section should communicate growth clearly.

It can visually show the path:

```txt
Junior Full-Stack Developer
→ Full-Stack / Cloud-Native Software Engineer
→ AI-Enhanced Software Engineer
→ Senior Software Engineer / Technical Lead
→ Project or Engineering Manager
→ Founder / CEO
```

Use clean progression cards or nodes.

Do not exaggerate current experience.

---

## Projects & Lab Upgrade Direction

This section should stay honest.

Do not add fake completed projects.

Recommended cards:

- Currently Building
- Future Project System
- Research Rebuild Plan
- Dash Panel Vision

It is okay to describe future direction, but do not make it look like finished projects unless they exist.

---

## Contact Upgrade Direction

The contact section should be calm, professional, and easy to use.

Include:

- Professional email.
- GitHub.
- General location.
- LinkedIn only when provided.

Do not include:

- Phone number.
- Full address.
- Private contact information.

Optional visual later:

```txt
public/assets/images/illustrations/torii-night-scene.webp
```

But do not generate or assume this image.

---

## Image Strategy

Follow:

```txt
docs/IMAGE_ASSET_PLAN.md
docs/IMAGE_AND_VISUAL_SYSTEM.md
```

Core image rules:

- Do not assume images exist.
- Do not generate images.
- Do not use all images randomly.
- Do not create broken image links.
- Use polished fallbacks when images are missing.
- Use curated images only.
- Final production images should be optimized WebP files.
- Raw images belong in `assets-raw/` and are usually ignored by Git.

---

## Required Image Folders

Codex may create these folders:

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

`assets-raw/` should be ignored by Git.

---

## Animation Direction

Use subtle, professional animations only.

Allowed:

- Card hover lift.
- Button glow on hover.
- Badge hover brightening.
- Image hover scale.
- Navbar underline/active hover.
- Slow ambient background glow.
- Smooth transitions.

Avoid:

- Scroll hijacking.
- Particle storms.
- Cursor trails.
- Heavy 3D.
- Excessive motion.
- Loading screens.
- Animations that hurt readability.

Prefer CSS and Tailwind transitions first.

---

## Component Upgrade Targets

Likely files to update:

```txt
src/styles/global.css
src/components/common/Badge.astro
src/components/common/SectionHeader.astro
src/components/layout/Navbar.astro
src/components/layout/Footer.astro
src/components/ui/Button.astro
src/components/ui/Card.astro
src/components/ui/Timeline.astro
src/components/sections/Hero.astro
src/components/sections/About.astro
src/components/sections/Skills.astro
src/components/sections/Experience.astro
src/components/sections/Education.astro
src/components/sections/Direction.astro
src/components/sections/ProjectsLab.astro
src/components/sections/Contact.astro
src/data/profile.ts
src/data/education.ts
src/data/experience.ts
src/data/skills.ts
```

Codex should make focused, high-quality changes instead of rewriting everything unnecessarily.

---

## Technical Rules

Do not add heavy dependencies unless approved.

Prefer:

- Astro components.
- Tailwind utilities.
- CSS variables.
- Inline SVG icons.
- Lightweight fallbacks.

Avoid:

- Heavy animation libraries.
- Large icon libraries.
- Backend/auth/database dependencies.
- CMS dependencies.
- Unnecessary framework changes.

---

## Privacy Rules

Do not add:

- Public CGPA.
- Phone number.
- Full home address.
- IC/passport number.
- Private documents.
- Transcript.
- Fake achievements.
- Fake certificates.
- Fake projects.

Keep the portfolio honest and privacy-conscious.

---

## Deployment Rules

Current deployment uses GitHub Pages.

Do not break:

```txt
.github/workflows/deploy-github-pages.yml
astro.config.mjs
```

Current Astro deployment config is for GitHub Pages project hosting:

```js
site: 'https://dashszn.github.io',
base: '/dashszn-portfolio',
```

Do not change deployment settings unless explicitly requested.

---

## Required Checks

After implementation, run:

```bash
pnpm build
pnpm check
pnpm format:check
git status
```

All checks must pass before the task is considered complete.

---

## Expected Codex Behavior

Before coding, Codex should read:

```txt
AGENTS.md
docs/CODEX_VISUAL_TASK.md
docs/IMAGE_ASSET_PLAN.md
docs/IMAGE_AND_VISUAL_SYSTEM.md
```

Codex should not commit changes unless Danish explicitly asks.

Codex should explain:

1. What files changed.
2. What visual improvements were made.
3. How image fallback behavior works.
4. What checks passed.
5. Any concerns or recommendations.

---

## Definition of Done

This visual upgrade phase is complete when:

- The website has a stronger Cyber Zen / Aqua Night visual identity.
- Hero section feels more premium.
- Cards, buttons, badges, and navigation feel polished.
- Skills are easier to scan visually.
- Optional image support exists without broken images.
- The site remains honest and compact.
- No fake/private content is added.
- The site remains responsive.
- `pnpm build` passes.
- `pnpm check` passes.
- `pnpm format:check` passes.
