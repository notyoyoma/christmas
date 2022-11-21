<template>
  <div>
    <select v-model="year">
      <option v-for="(y, i) in options" :key="i">{{ y }}</option>
    </select>
    <table>
      <tbody>
        <Pairing
          v-for="(family, i) in families"
          :giver="family"
          :receiver="mapReciever(i)"
          :key="i"
        />
      </tbody>
    </table>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Pairing from "./Pairing.vue";

const startYear = 2015;
const date = new Date();
const year: number = date.getFullYear();
const options: number[] = [];
for (let i = startYear; i <= year + 1; i++) {
  options.push(i);
}
const families = [
  "Alicia and Eric",
  "Andy and Jenni",
  "Christine and Nathan",
  "Becky and Jere",
  "Marty and Bethany",
  "John and Susan",
];

export default defineComponent({
  components: { Pairing },
  data() {
    return {
      year,
      options,
      families,
    };
  },
  computed: {
    offset(): number {
      let offset = this.year - startYear;
      const iteration = Math.floor(offset / (families.length - 1)) + 1;
      return offset + iteration;
    },
  },
  methods: {
    mapReciever(i: number): string {
      let index = i + this.offset;
      if (index >= families.length) index = index % families.length;
      return families[index];
    },
  },
});
</script>

<style scoped>
select {
  border: 0;
  background: transparent;
  font-size: inherit;
  margin: 1em auto;
  display: block;
}
select:active,
select:hover,
select:focus-visible {
  border: 0;
  outline: 0;
}
</style>
