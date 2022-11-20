<template>
  <header>
    <h1>Naselli family christmas gift rotation</h1>
  </header>

  <main>
    <YearlyPairings />
  </main>
</template>

<script setup lang="ts">
import YearlyPairings from "./components/YearlyPairings.vue";
</script>

<style scoped>
h1 {
  font-size: 7vw;
}

main {
  margin: auto;
  font-size: 3vw;
}
</style>
