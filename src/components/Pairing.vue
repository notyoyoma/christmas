<template>
  <tr>
    <td>{{ giver }}</td>
    <td>&rarr;</td>
    <td>{{ receiver }}</td>
  </tr>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  props: {
    giver: { type: String, required: true },
    receiver: { type: String, required: true },
  },
});
</script>

<style scoped>
td:first-child {
  text-align: right;
}
td:nth-child(2) {
  padding: 0 1vw;
}
</style>
