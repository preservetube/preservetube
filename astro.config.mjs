import { defineConfig } from 'astro/config';
import node from "@astrojs/node";
import vercel from "@astrojs/vercel/serverless";

// https://astro.build/config
export default defineConfig({
  output: 'server',
  server: {
    port: 80,
    host: true
  },
  adapter: vercel()
});