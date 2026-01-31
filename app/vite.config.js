import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import eslint from "vite-plugin-eslint";

// https://vitejs.dev/config/
export default defineConfig({
    server: {
    host: "0.0.0.0",
  },
  preview: {
    host: "0.0.0.0",
  },
  plugins: [react(), eslint()],
});
