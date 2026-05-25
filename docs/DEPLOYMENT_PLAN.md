# Deployment Plan — Dashszn.dev

## Deployment Targets

Dashszn.dev is planned to deploy to:

1. GitHub Pages
2. Cloudflare Pages

## GitHub Pages

GitHub Pages acts as the public static mirror and proof of GitHub workflow.

### Repository

```txt
dashszn/dashszn-portfolio
```

### Expected GitHub Pages URL

```txt
https://dashszn.github.io/dashszn-portfolio/
```

### Astro Configuration for GitHub Pages

Because this is a project repository, Astro uses:

```js
site: 'https://dashszn.github.io',
base: '/dashszn-portfolio',
```

This means the generated static site is aware that it will be served from the `/dashszn-portfolio/` subpath instead of the root domain.

### Required `astro.config.mjs`

```js
import { defineConfig } from 'astro/config';
import react from '@astrojs/react';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  site: 'https://dashszn.github.io',
  base: '/dashszn-portfolio',
  integrations: [react()],
  vite: {
    plugins: [tailwindcss()],
  },
});
```

### GitHub Pages Workflow File

Create this file:

```txt
.github/workflows/deploy-github-pages.yml
```

Recommended workflow:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches:
      - main
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: github-pages
  cancel-in-progress: false

jobs:
  build:
    name: Build Astro site
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v5

      - name: Setup pnpm
        uses: pnpm/action-setup@v4
        with:
          version: 11.3.0

      - name: Setup Node.js
        uses: actions/setup-node@v6
        with:
          node-version: 24
          cache: pnpm

      - name: Setup GitHub Pages
        uses: actions/configure-pages@v6

      - name: Install dependencies
        run: pnpm install --frozen-lockfile

      - name: Build website
        run: pnpm build

      - name: Upload GitHub Pages artifact
        uses: actions/upload-pages-artifact@v4
        with:
          path: ./dist

  deploy:
    name: Deploy Astro site
    needs: build
    runs-on: ubuntu-latest

    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}

    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

### GitHub Repository Settings

After pushing the workflow:

1. Open the GitHub repository.
2. Go to **Settings**.
3. Go to **Pages**.
4. Under **Build and deployment**, set **Source** to **GitHub Actions**.
5. Go to the **Actions** tab.
6. Open the latest **Deploy to GitHub Pages** workflow.
7. Wait until the workflow becomes green.
8. Visit the deployed site URL.

### GitHub Pages Local Verification Commands

Before pushing deployment changes, run:

```bash
pnpm build
pnpm check
pnpm format:check
git status
```

Expected result:

```txt
Build succeeds.
Astro check returns 0 errors.
Format check passes.
Git status is clean after commit.
```

### GitHub Pages Commit

After adding the workflow and Astro config:

```bash
git add .
git commit -m "ci: add github pages deployment workflow"
git push
```

## Cloudflare Pages

Cloudflare Pages will be the main production deployment later.

### Recommended Cloudflare Pages Settings

```txt
Production branch: main
Build command: pnpm build
Build output directory: dist
```

### Cloudflare Pages Setup Steps

1. Log in to Cloudflare.
2. Open **Workers & Pages**.
3. Choose **Create application**.
4. Choose **Pages**.
5. Connect the GitHub repository:
   ```txt
   dashszn/dashszn-portfolio
   ```
6. Set the production branch:
   ```txt
   main
   ```
7. Set the build command:
   ```txt
   pnpm build
   ```
8. Set the output directory:
   ```txt
   dist
   ```
9. Deploy the site.

## Important Note About Base Path

The current `astro.config.mjs` is configured for GitHub Pages subpath deployment:

```js
site: 'https://dashszn.github.io',
base: '/dashszn-portfolio',
```

This is correct for:

```txt
https://dashszn.github.io/dashszn-portfolio/
```

However, Cloudflare Pages with a root custom domain usually should not use the GitHub Pages subpath.

For example, if the future production site becomes:

```txt
https://dashszn.dev
```

then the Astro config may need to be adjusted to remove the GitHub Pages base path:

```js
site: 'https://dashszn.dev',
```

and remove:

```js
base: '/dashszn-portfolio',
```

A clean future solution may be to use environment-based configuration so GitHub Pages and Cloudflare Pages can build with different base URLs.

## Possible Future Environment-Based Config

Later, if needed, the config can be adjusted to detect deployment target.

Example concept:

```js
const isGitHubPages = process.env.DEPLOY_TARGET === 'github-pages';

export default defineConfig({
  site: isGitHubPages ? 'https://dashszn.github.io' : 'https://dashszn.dev',
  base: isGitHubPages ? '/dashszn-portfolio' : '/',
  integrations: [react()],
  vite: {
    plugins: [tailwindcss()],
  },
});
```

This is not required for v1, but it may be useful when both GitHub Pages and Cloudflare Pages are active.

## Deployment Checklist

Before deployment:

- [ ] `pnpm build` passes.
- [ ] `pnpm check` passes.
- [ ] `pnpm format:check` passes.
- [ ] Git working tree is clean.
- [ ] GitHub remote is connected.
- [ ] Main branch is pushed to GitHub.
- [ ] GitHub Pages workflow exists.
- [ ] GitHub Pages source is set to GitHub Actions.
- [ ] Workflow run completes successfully.
- [ ] Public URL works.
- [ ] Website navigation works after deployment.
- [ ] Styling loads correctly from deployed URL.
- [ ] No private information is exposed.

## Current Public URLs

### GitHub Pages

Expected:

```txt
https://dashszn.github.io/dashszn-portfolio/
```

### Cloudflare Pages

To be added later.

## Future Deployment Improvements

Possible future improvements:

- Add Cloudflare Pages production deployment.
- Add custom domain.
- Add preview deployments for pull requests.
- Add Lighthouse performance check.
- Add automated formatting check in GitHub Actions.
- Add automated Astro check in GitHub Actions.
- Add branch protection for `main`.
- Add release tags for major portfolio versions.

