<template>
  <q-layout view="lHh Lpr lFf">
    <q-layout-drawer side="left" v-model="leftDrawerOpen" :overlay=true>
      <q-scroll-area class="fit">
        <q-list-header>Settings</q-list-header>
        <q-item link to="/dashboard/setting-weather">
          <q-item-main label="Weather" sublabel="" />
        </q-item>
        <q-item link to="/dashboard/setting-device">
          <q-item-main label="Device" sublabel="" />
        </q-item>
        <q-item link to="/dashboard/setting-camera">
          <q-item-main label="Camera" sublabel="" />
        </q-item>
      </q-scroll-area>
    </q-layout-drawer>
    <q-layout-header>
      <q-toolbar
        color="blue-grey-10"
      >
        <q-toolbar-title>
          <span v-text="currentTime"></span> <span class="shms-date" v-text="currentDate"></span>
        </q-toolbar-title>
        <q-btn flat round dense icon="notifications">
          <q-chip floating color="red" @click="leftDrawerOpen = !leftDrawerOpen" >1</q-chip>
        </q-btn>
        <!-- <q-btn flat round dense icon="wifi">
          <q-popover class="bg-tertiary text-white">
            <q-list separator link>
              <q-item v-close-overlay @click.native="doSomething">
                <q-item-main>
                  <q-item-tile>Gas Station</q-item-tile>
                </q-item-main>
                <q-item-side>
                  <q-icon color="white" name="wifi" size="24px" />
                </q-item-side>
              </q-item>
              <q-item v-close-overlay @click.native="doSomething">
                <q-item-main>
                  <q-item-tile>Gas Station</q-item-tile>
                </q-item-main>
                <q-item-side>
                  <q-icon color="white" name="wifi" size="24px" />
                </q-item-side>
              </q-item>
              <q-item v-close-overlay @click.native="doSomething">
                <q-item-main>
                  <q-item-tile>Gas Station</q-item-tile>
                </q-item-main>
                <q-item-side>
                  <q-icon color="white" name="wifi" size="24px" />
                </q-item-side>
              </q-item>
              <q-item v-close-overlay @click.native="doSomething">
                <q-item-main>
                  <q-item-tile>Gas Station</q-item-tile>
                </q-item-main>
                <q-item-side>
                  <q-icon color="white" name="wifi" size="24px" />
                </q-item-side>
              </q-item>
            </q-list>
          </q-popover>
        </q-btn> -->
      </q-toolbar>
    </q-layout-header>

    <q-layout-footer>
      <q-toolbar
        color="blue-grey-10"
        class="shms-foot"
      >
        <router-link to="/dashboard" class="text-white">
          <q-btn flat to="/dashboard" round dense icon="dashboard" size="24px" />
        </router-link>
        <q-toolbar-title>
          Dashboard
        </q-toolbar-title>
        <router-link to="/dashboard/weather" class="text-white">
          <q-btn flat round dense icon="wb_sunny" size="24px" />
        </router-link>
        <router-link to="/dashboard/switch" class="text-white">
          <q-btn flat round dense icon="settings_input_hdmi" size="24px" />
        </router-link>
        <router-link to="/dashboard/light" class="text-white">
          <q-btn flat round dense icon="highlight" size="24px" />
        </router-link>
        <router-link to="/dashboard/location" class="text-white">
          <q-btn flat round dense icon="view_quilt" size="24px" />
        </router-link>
        <router-link to="/dashboard/camera" class="text-white">
          <q-btn flat round dense icon="linked_camera" size="24px" />
        </router-link>
        <router-link to="/dashboard/music" class="text-white">
          <q-btn flat round dense icon="music_video" size="24px" />
        </router-link>
        <q-btn flat round dense icon="settings" size="24px" @click="leftDrawerOpen = !leftDrawerOpen" />
      </q-toolbar>
    </q-layout-footer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { openURL, date } from 'quasar'

export default {
  name: 'LayoutDefault',
  data () {
    return {
      currentTime: null,
      currentDate: null
    }
  },
  methods: {
    openURL,
    updateCurrentTime () {
      let timeStamp = Date.now()
      let time = date.formatDate(timeStamp, 'hh:mm A')
      let today = date.formatDate(timeStamp, 'dddd, MMMM DD, YYYY')
      this.currentTime = time
      this.currentDate = today
    }
  },
  created: function () {
    setInterval(() => this.updateCurrentTime(), 1 * 1000)
  },
  computed: {
    leftDrawerOpen: {
      get () { return this.$store.state.layoutDefault.leftDrawerOpen },
      set (val) { this.$store.commit('layoutDefault/setLeftDrawerOpen', val) }
    }
  }
}
</script>

<style lang="stylus">
  .shms-foot
    height 70px
  .shms-date
    margin-left 10px
</style>
