<template>
  <div class="fullscreen bg-green-4">
    <div class="fixed-center text-white">
      <q-icon name="memory" size="108px" />
    </div>
   </div>
</template>

<script>
export default {
  name: 'Splash',
  created: function () {
    this.$router.push('/dashboard')
  }
}
</script>

<style lang="stylus">
</style>
