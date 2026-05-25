# Deployment Plan — Dashszn.dev

## Deployment Targets

Dashszn.dev should eventually deploy to:

1. GitHub Pages
2. Cloudflare Pages

## GitHub Pages Purpose

GitHub Pages will act as a public static mirror and proof of GitHub workflow.

## Cloudflare Pages Purpose

Cloudflare Pages will be the main production deployment.

## Expected Build Command

pnpm build

## Expected Output Directory

dist

## Notes

Deployment should happen after the Astro project is created and the static v1 site builds successfully.
