<template>
  <tr>
    <td>{{ giver }}</td>
    <td>=></td>
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
