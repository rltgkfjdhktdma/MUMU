<!--
<script setup lang="ts">
import TheWelcome from '../components/TheWelcome.vue'
</script>

<template>
  <main>
    <TheWelcome />
  </main>
</template>
-->
<script setup>
import { ref, onMounted } from 'vue'
import axios from 'axios'

const message = ref('Loading...')

onMounted(async () => {
  const res = await axios.get('http://localhost:8080/api/hello')
  message.value = res.data
})
</script>

<template>
  <div class="p-8 text-xl font-bold">{{ message }}</div>
</template>