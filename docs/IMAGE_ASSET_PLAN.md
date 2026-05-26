# Image Asset Plan — Dashszn.dev

## Purpose

This document explains how images should be organized, named, optimized, and connected to Dashszn.dev.

The goal is to make the portfolio feel more complete, polished, personal, and professional while keeping performance clean.

This plan is written for both Danish and Codex.

---

## Current Image Inventory

Based on the current Windows folder screenshot, the image collection appears to contain:

- Profile photos of Danish.
- Graduation photos, including MSU and UTM-related images.
- A fishing/personal image.
- A generated sample website interface reference.
- Work experience images related to Elmina Tech.
- Social media/work screenshots related to Elmina Tech.
- A compressed profile image.
- Several images with mixed file extensions such as `.jpg`, `.JPG`, `.png`, and `.PNG`.

The current image names are useful as temporary working names, but they should not be used directly in the final website.

The final website should use clean lowercase WebP names.

---

## Core Rule

Do not use all images just because they exist.

The site should use a curated set of strong images:

1. One main hero portrait.
2. One optional secondary personal/workspace image.
3. One or two education images.
4. One work experience image.
5. Optional visual reference files kept only in docs or raw assets.

The portfolio should feel premium, not crowded.

---

## Folder Strategy

Use two image layers:

```txt
assets-raw/
```

For original images. These may be large and unoptimized. They are for editing/conversion only.

```txt
public/assets/images/
```

For final optimized WebP images used by the live website.

---

## Recommended Folder Structure

```txt
dashszn-portfolio/
├── assets-raw/
│   ├── profile/
│   ├── education/
│   ├── experience/
│   ├── projects/
│   └── references/
│
├── public/
│   └── assets/
│       ├── images/
│       │   ├── profile/
│       │   ├── education/
│       │   ├── experience/
│       │   ├── projects/
│       │   ├── illustrations/
│       │   └── backgrounds/
│       └── icons/
│
└── scripts/
    └── optimize-images.sh
```

---

## Git Rules

Original/raw images can become large, so avoid committing unnecessary raw files.

Recommended `.gitignore` addition:

```gitignore
# Raw unoptimized image assets
assets-raw/

# Windows downloaded-file metadata
*:Zone.Identifier
```

Only commit optimized images that are actually used by the site.

---

## Final Image Naming Convention

Rules:

- Use lowercase only.
- Use hyphens, not spaces.
- Use meaningful names.
- Use `.webp` for final website images.
- Avoid names like `IMG_1234`, `profile-final-final2`, or mixed-case names.

---

## Profile Images

Raw examples:

```txt
assets-raw/profile/danish-profile-original.jpg
assets-raw/profile/danish-profile-2-original.jpg
assets-raw/profile/danish-profile-3-original.png
```

Final optimized files:

```txt
public/assets/images/profile/danish-portrait.webp
public/assets/images/profile/danish-casual.webp
public/assets/images/profile/danish-workspace.webp
```

### Recommended Use

| Final file              | Purpose                           | Required?                         |
| ----------------------- | --------------------------------- | --------------------------------- |
| `danish-portrait.webp`  | Main hero portrait                | Yes, when final image is selected |
| `danish-casual.webp`    | Optional About image              | Optional                          |
| `danish-workspace.webp` | Optional workspace/creative image | Optional                          |

### Recommended Size

```txt
Hero portrait:
1000 x 1250 px
Aspect ratio: 4:5
Quality: 80–85
Target size: 150 KB – 350 KB
```

---

## Education Images

Final optimized files:

```txt
public/assets/images/education/danish-msu-graduation.webp
public/assets/images/education/danish-utm-graduation.webp
public/assets/images/education/utm-mjiit-campus.webp
public/assets/images/education/msu-campus.webp
public/assets/images/education/smk-bukit-jelutong.webp
```

### Recommended Use

| Final file                   | Purpose                              |
| ---------------------------- | ------------------------------------ |
| `danish-utm-graduation.webp` | UTM/Bachelor education visual        |
| `danish-msu-graduation.webp` | MSU/Diploma education visual         |
| `utm-mjiit-campus.webp`      | UTM/MJIIT campus visual if available |
| `msu-campus.webp`            | MSU campus visual if available       |
| `smk-bukit-jelutong.webp`    | High school visual if available      |

Only use the strongest and cleanest images.

### Recommended Size

```txt
Education images:
1200 x 800 px
Aspect ratio: 3:2
Quality: 75–82
Target size: 120 KB – 300 KB
```

---

## Experience Images

Final optimized files:

```txt
public/assets/images/experience/elmina-tech-workplace.webp
public/assets/images/experience/elmina-tech-shop.webp
public/assets/images/experience/elmina-tech-social-media.webp
```

### Recommended Use

| Final file                      | Purpose                           |
| ------------------------------- | --------------------------------- |
| `elmina-tech-workplace.webp`    | Main work experience image        |
| `elmina-tech-shop.webp`         | Optional shop-specific image      |
| `elmina-tech-social-media.webp` | Optional social media work visual |

For v1, use only one if it looks good.

### Recommended Size

```txt
Experience images:
1200 x 800 px
Aspect ratio: 3:2
Quality: 75–82
Target size: 120 KB – 300 KB
```

---

## Project Images

Do not add fake project thumbnails.

Only add project thumbnails when real projects are ready.

Future names:

```txt
public/assets/images/projects/dashszn-portfolio-thumbnail.webp
public/assets/images/projects/plantguard-ai-thumbnail.webp
public/assets/images/projects/taskflow-ai-thumbnail.webp
```

Recommended size:

```txt
Project thumbnails:
1280 x 720 px
Aspect ratio: 16:9
Quality: 80–82
Target size: 120 KB – 300 KB
```

---

## Reference Images

Design references should not be used as public website content.

Examples:

```txt
sample website portfolio.png
color palette reference image
```

Store them in:

```txt
assets-raw/references/
```

or:

```txt
docs/references/
```

Do not place them in:

```txt
public/assets/images/
```

unless they are intentionally part of the public website.

---

## Section-by-Section Image Placement

## Hero Section

### Goal

Create a strong identity-focused first impression.

### Recommended Layout

```txt
Left:
- Badge
- Large name
- Role headline
- Short intro
- Buttons

Right:
- Portrait image card
- Floating code card
- Floating system/design mini card
- Tech stack bar
```

### Image

```txt
/assets/images/profile/danish-portrait.webp
```

### Fallback Rule

If `danish-portrait.webp` is missing, show a polished abstract identity card instead of a broken image.

Do not show broken image icons.

---

## About Section

### Goal

Show personality and background.

### Optional Image

```txt
/assets/images/profile/danish-workspace.webp
```

### Recommended Layout

```txt
Card 1:
About text

Card 2:
Quick facts, languages, interests

Optional visual card:
Workspace/casual image or soft illustration
```

---

## Skills Section

### Goal

Make skills visually easier to scan.

Use icons, not photos.

Suggested icon meanings:

| Skill group               | Icon meaning          |
| ------------------------- | --------------------- |
| Software Development      | Code                  |
| Web & App Development     | Browser or app window |
| AI & Research Foundations | Brain/circuit         |
| Creative & Media          | Camera                |
| Professional & Business   | Users/briefcase       |

Codex should use lightweight inline SVG icons first.

Do not add heavy icon libraries unless explicitly approved.

---

## Experience Section

### Goal

Connect experience to a real-world context.

### Optional Image

```txt
/assets/images/experience/elmina-tech-workplace.webp
```

### Fallback Rule

If image is missing, show a clean decorative card or icon-based card.

---

## Education Section

### Goal

Make the education journey more visual without clutter.

### Optional Images

```txt
/assets/images/education/danish-utm-graduation.webp
/assets/images/education/danish-msu-graduation.webp
/assets/images/education/smk-bukit-jelutong.webp
```

### Recommended Layout

Each education item can support an optional thumbnail.

If no image exists, the timeline remains text-only and polished.

---

## Projects & Lab Section

### Goal

Show future direction honestly without fake project cards.

Possible cards:

- Currently Building
- Future Project System
- Research Rebuild Plan
- Dash Panel Vision

Do not add fake completed projects.

Do not add fake screenshots.

---

## Contact Section

### Goal

Make contact section feel calm and polished.

Possible visual:

```txt
/assets/images/illustrations/torii-night-scene.webp
```

But do not add generated images unless Danish provides/approves them.

Fallback should be CSS-based decorative scene or gradient card.

---

## WebP Conversion

Install WebP tools in WSL:

```bash
sudo apt update
sudo apt install webp
```

Convert hero portrait:

```bash
cwebp assets-raw/profile/danish-portrait-original.jpg \
  -q 84 \
  -resize 1000 1250 \
  -o public/assets/images/profile/danish-portrait.webp
```

Convert education image:

```bash
cwebp assets-raw/education/danish-utm-graduation-original.jpg \
  -q 80 \
  -resize 1200 800 \
  -o public/assets/images/education/danish-utm-graduation.webp
```

Convert experience image:

```bash
cwebp assets-raw/experience/elmina-tech-workplace-original.png \
  -q 80 \
  -resize 1200 800 \
  -o public/assets/images/experience/elmina-tech-workplace.webp
```

Convert project thumbnail later:

```bash
cwebp assets-raw/projects/project-original.png \
  -q 82 \
  -resize 1280 720 \
  -o public/assets/images/projects/project-thumbnail.webp
```

---

## Image Optimization Quality Guide

| Image type              | Width |       Height | Quality |
| ----------------------- | ----: | -----------: | ------: |
| Hero portrait           |  1000 |         1250 |      84 |
| About/profile secondary |  1000 | 1000 or 1250 |      82 |
| Education image         |  1200 |          800 |      80 |
| Experience image        |  1200 |          800 |      80 |
| Project thumbnail       |  1280 |          720 |      82 |
| Background image        |  1920 |         1080 |   70–78 |

---

## Performance Rules

- Prefer WebP for photos.
- Prefer SVG for icons.
- Keep hero image under 350 KB if possible.
- Keep section images under 300 KB if possible.
- Do not use huge raw PNG/JPG files in production.
- Use `loading="lazy"` for non-hero images.
- Use width and height attributes where possible.
- Use `object-cover` for cropped cards.
- Avoid layout shift.

---

## Codex Rules

Codex is allowed to:

- Create folders.
- Add image path fields to data files.
- Add optional image support in components.
- Add fallback image cards.
- Add CSS-based decorative visuals.
- Add an optimization script template.
- Update documentation.

Codex must not:

- Generate images.
- Invent fake images.
- Add broken image paths.
- Use all raw images randomly.
- Commit large raw images without approval.
- Add fake projects.
- Add fake certificates.
- Add public CGPA.
- Add phone number.
- Add backend, auth, or database yet.

---

## Required Checks

After any implementation, run:

```bash
pnpm build
pnpm check
pnpm format:check
git status
```

Final result must pass all checks.
