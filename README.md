# Dashszn.dev

Dashszn.dev is the personal website of Danish Syazani, also known as Dash.

It is designed as a modern, compact, and professional personal profile website that presents Danish's background in software engineering, full-stack development, AI curiosity, creative technology, and long-term career direction.

## Current Status

Current phase: Dashszn.dev v1 homepage foundation completed.

The site currently includes:

- Home
- About
- Skills
- Experience
- Education
- Direction
- Projects & Lab
- Contact

## Tech Stack

- Astro
- React
- TypeScript
- Tailwind CSS
- pnpm

## Project Principles

This website is intentionally built with a clean v1 scope.

It does not include:

- Fake project placeholders
- Public CGPA
- Public phone number
- Unfinished project overclaiming
- Fake certificates or achievements
- Admin dashboard
- Authentication
- Database
- Backend API

Future versions may add those dynamic features when they are ready.

## Development

Install dependencies:

```bash
pnpm install
```

Run local development server:

```bash
pnpm dev
```

Build the site:

```bash
pnpm build
```

Run Astro checks:

```bash
pnpm check
```

Format files:

```bash
pnpm format
```

Check formatting:

```bash
pnpm format:check
```

## Recommended Workflow

This project follows a lightweight Agile/Scrum-inspired workflow.

Recommended flow:

1. Plan the sprint or issue.
2. Work on one focused task at a time.
3. Run checks before committing.
4. Commit using clear Conventional Commit messages.
5. Keep `main` stable and deployable.

Example commits:

```bash
git commit -m "feat: add homepage sections"
git commit -m "chore: polish metadata and documentation"
git commit -m "fix: improve mobile spacing"
```

## Useful Commands

Check current project status:

```bash
git status
```

View recent commits:

```bash
git log --oneline --decorate -5
```

Run full local verification:

```bash
pnpm build
pnpm check
pnpm format:check
```

## Privacy Rules

The public website should not expose:

- CGPA
- Phone number
- Full home address
- Private documents
- Transcript
- IC/passport number
- Fake achievements
- Fake project entries

Professional contact should use controlled public channels such as email, GitHub, and LinkedIn.

## Future Roadmap

Planned future upgrades may include:

- Real project showcase pages
- Certificate and achievement section
- Resume download
- Cloudflare Pages deployment
- GitHub Pages deployment
- Cloudflare Workers API
- Private admin dashboard
- Authentication
- Portfolio CMS
- AI/research project expansion

## Project Structure

Current planned structure:

```txt
dashszn-portfolio/
├── docs/
├── public/
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
├── astro.config.mjs
├── package.json
├── pnpm-lock.yaml
├── README.md
└── tsconfig.json
```

## Owner

Danish Syazani  
Known as Dash  
GitHub: dashszn
