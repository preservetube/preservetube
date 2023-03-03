import { defineConfig } from 'astro/config';
import node from "@astrojs/node";

export default defineConfig({
  output: 'server',
  server: {
    port: 80,
    host: true
  },
  adapter: node({
    mode: "standalone"
  })
});