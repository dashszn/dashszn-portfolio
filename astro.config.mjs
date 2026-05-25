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
