/*
import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import vueDevTools from 'vite-plugin-vue-devtools'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueDevTools(),
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    },
  },
})
*/
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import path from 'path'

// ⚙️ 빌드 결과를 Spring Boot static 경로로 지정
export default defineConfig({
  plugins: [vue()],
  build: {
    outDir: path.resolve(__dirname, '../src/main/resources/static'),
    emptyOutDir: true,
  },
  server: {
    port: 5173,
  },
})