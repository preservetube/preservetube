import { defineConfig } from "astro/config";
import node from "@astrojs/node";
import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
  integrations: [tailwind()],
  output: "server",
  server: {
    port: 80,
    host: true,
    headers: {
      "Onion-Location":
        "http://tubey5btlzxkcjpxpj2c7irrbhvgu3noouobndafuhbw4i5ndvn4v7qd.onion",
    },
  },
  adapter: node({
    mode: "standalone",
  }),
});
