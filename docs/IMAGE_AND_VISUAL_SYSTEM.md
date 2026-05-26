# Image and Visual System — Dashszn.dev

## Design Reference Summary

The preferred visual direction is inspired by the provided sample interface and color palette.

The sample interface has these qualities:

- Dark full-page portfolio layout.
- Large personal hero section.
- Portrait-focused identity area.
- Floating code/system cards.
- Aqua glow effects.
- Rounded glass-like dashboard cards.
- Compact sections below the hero.
- Tech stack badges.
- Clean dark cyan palette.
- Personal but professional tone.
- Slightly futuristic interface.

The goal is to adapt this inspiration into Dashszn.dev without copying it exactly.

---

## Visual Theme Name

Internal theme name:

```txt
Cyber Zen
```

Alternative description:

```txt
Aqua Night Developer Portfolio
```

This means:

```txt
Dark cyan developer portfolio
+
soft Japanese-inspired atmosphere
+
clean futuristic interface
+
personal storytelling
```

---

## Color Palette

Use the provided palette as the main visual direction.

| Name       | Hex       | Use                                        |
| ---------- | --------- | ------------------------------------------ |
| Mint Cream | `#F2FFF6` | Main bright text, light accents            |
| Tea Green  | `#CAFFDE` | Soft highlights, glow, success-like warmth |
| Sky Aqua   | `#25C5E9` | Primary accent, links, active states       |
| Dark Cyan  | `#238689` | Secondary accent, borders, muted glow      |
| Ink Black  | `#021725` | Main background                            |

---

## CSS Variables

Codex should update `src/styles/global.css` with a clean token system similar to this:

```css
:root {
  --color-mint-cream: #f2fff6;
  --color-tea-green: #caffde;
  --color-sky-aqua: #25c5e9;
  --color-dark-cyan: #238689;
  --color-ink-black: #021725;

  --bg-main: #021725;
  --bg-card: rgba(2, 23, 37, 0.72);
  --border-soft: rgba(202, 255, 222, 0.14);
  --text-main: #f2fff6;
  --text-muted: rgba(242, 255, 246, 0.68);
  --accent-primary: #25c5e9;
  --accent-secondary: #caffde;
}
```

---

## Background Direction

Use CSS first instead of heavy background images.

Suggested background concept:

```css
body {
  background:
    radial-gradient(circle at 50% 12%, rgba(202, 255, 222, 0.18), transparent 24rem),
    radial-gradient(circle at 78% 28%, rgba(37, 197, 233, 0.16), transparent 28rem),
    linear-gradient(180deg, #021725 0%, #03131f 52%, #02111c 100%);
}
```

Add a subtle grid/pattern layer carefully.

Example:

```css
body::before {
  content: '';
  position: fixed;
  inset: 0;
  pointer-events: none;
  background-image:
    linear-gradient(rgba(202, 255, 222, 0.04) 1px, transparent 1px),
    linear-gradient(90deg, rgba(202, 255, 222, 0.04) 1px, transparent 1px);
  background-size: 48px 48px;
  mask-image: linear-gradient(to bottom, black, transparent 85%);
}
```

Do not make the grid too visible.

---

## Typography Direction

The site should feel premium and readable.

Use:

- Large elegant hero name.
- Clean sans-serif body text.
- Slight letter spacing for small labels.
- Strong contrast between headings and muted descriptions.

Avoid:

- Hard-to-read decorative fonts.
- Overly anime/game typography.
- Too many font families.

---

## Layout Direction

The preferred page structure:

```txt
1. Hero
2. About
3. Skills
4. Journey
5. Projects & Lab
6. Contact
```

Current detailed sections may remain:

```txt
Home
About
Skills
Experience
Education
Direction
Projects
Contact
```

But visually, Experience + Education + Direction can be grouped as a “Journey” section later if desired.

---

## Hero Section Upgrade

The hero should become the strongest visual area.

Recommended hero layout:

```txt
Left:
- Small badge: Software Engineer
- Large name: Danish Syazani
- Role line
- Short description
- Buttons

Center/Right:
- Portrait card
- Aqua glow behind portrait
- Floating code card
- Floating system/design mini card
- Tech stack strip
```

Hero should still work without the portrait image.

If `danish-portrait.webp` does not exist, show a polished abstract identity card.

---

## Cards

Cards should feel like dark glass panels.

Recommended card style:

```txt
Background: semi-transparent ink
Border: mint/white low-opacity
Shadow: aqua/dark glow
Radius: large rounded corners
Hover: slight lift and brighter border
```

Suggested Tailwind style direction:

```txt
rounded-[1.5rem]
border border-white/10
bg-white/[0.04]
backdrop-blur
transition
hover:-translate-y-1
hover:border-cyan-300/30
hover:bg-white/[0.06]
```

---

## Buttons

Buttons should feel clean and premium.

Primary:

```txt
Mint/tea-green background
Dark text
Soft glow on hover
```

Secondary:

```txt
Transparent dark card
Aqua border
Light text
```

Hover should be subtle.

---

## Badges

Badges should look like small tech chips.

Use:

```txt
Rounded pill
Thin border
Small icon optional
Aqua/mint text
Dark transparent background
```

---

## Icons

Use lightweight inline SVG icons first.

Recommended icon meanings:

| Group                   | Icon                            |
| ----------------------- | ------------------------------- |
| Software Development    | Code                            |
| Web & App Development   | Browser/window                  |
| AI & Research           | Brain/circuit                   |
| Creative & Media        | Camera                          |
| Professional & Business | Users/briefcase                 |
| Location                | Map pin                         |
| Email                   | Mail                            |
| GitHub                  | GitHub mark or simple code icon |

Do not add a large icon library unless needed.

---

## Japanese-Inspired Details

Use subtle visual hints only.

Good:

- Aqua moon/sun glow.
- Thin divider lines.
- Soft wave/grid pattern.
- Torii/garden image later if available.
- Minimal geometric accents.
- Clean calm spacing.

Avoid:

- Random samurai swords everywhere.
- Overly anime styling.
- Red/blood-heavy palette.
- Busy Japanese text decorations.
- Heavy game UI.

---

## Animation Direction

Use CSS/Tailwind transitions first.

Allowed:

- Hover lift on cards.
- Hover glow on buttons.
- Image hover scale.
- Navbar underline.
- Badge hover brightening.
- Slow ambient background glow.

Avoid:

- Scroll hijacking.
- Particle storms.
- Cursor trails.
- Loading screens.
- Too many moving elements.

---

## Responsive Rules

The site must look good on:

- Desktop.
- Laptop.
- Tablet.
- Mobile.

Hero layout should stack cleanly on mobile.

Cards should not become too cramped.

Navigation should eventually support mobile behavior if needed.

---

## Accessibility Rules

- Maintain readable text contrast.
- Do not use tiny low-contrast text.
- Do not rely only on color to communicate meaning.
- Ensure links/buttons are recognizable.
- Avoid excessive motion.
- Use meaningful alt text for real images.

---

## Implementation Priority

Codex should implement in this order:

1. Update theme tokens and background.
2. Improve global card/button/badge visual style.
3. Upgrade hero layout.
4. Add optional image-ready support.
5. Add skill icons.
6. Improve education/experience visual cards.
7. Add responsive polish.
8. Run checks.

---

## Do Not Do

Do not:

- Generate images.
- Add fake projects.
- Add fake certificates.
- Add public CGPA.
- Add phone number.
- Add full address.
- Add backend/auth/database.
- Break GitHub Pages deployment.
- Add unnecessary heavy dependencies.
