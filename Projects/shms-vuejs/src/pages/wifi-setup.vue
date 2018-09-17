<template>
  <div class="fullscreen">
    <div class="row justify-end">
      <div class="col-1">
        <q-btn flat dense round icon="refresh" color="white" size="24px" />
      </div>
    </div>
    <q-card class="fixed-center text-center no-shadow text-white">
      <q-card-title>
        <h2>Wi-Fi setup</h2>
      </q-card-title>
      <q-list highlight>
        <q-item>
          <q-item-main>
            <q-item-tile label>Bar XYZ</q-item-tile>
          </q-item-main>
          <q-item-side>
            <q-icon color="white" name="wifi" size="24px" />
          </q-item-side>
        </q-item>
        <q-item>
          <q-item-main>
            <q-item-tile label>Gas Station</q-item-tile>
          </q-item-main>
          <q-item-side>
            <q-icon color="white" name="wifi" size="24px" />
          </q-item-side>
        </q-item>
     </q-list>
   </q-card>
  </div>
</template>

<script>
export default {
  name: 'WifiSetup'
}
</script>

<style>
</style>
