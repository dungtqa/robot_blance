<template>
  <q-page padding class="text-white">
    <q-page-sticky v-if="currentWeather" position="top-left" :offset="[18, 18]">
      <q-card :flat=true>
        <q-card-title>
          {{currentWeather.location.name}}, {{currentWeather.location.country}}
        </q-card-title>
        <q-card-main>
          <span class="q-display-1"><img :src="currentWeather.current.condition.icon" />
            <span v-if="weatherSetting.temp_symbol === 'tmp_c'">{{currentWeather.current.temp_c}}°C</span>
            <span v-if="weatherSetting.temp_symbol === 'tmp_f'">{{currentWeather.current.temp_f}}°F</span>
          </span>
          <div class="row">{{currentWeather.current.condition.text}}</div>
        </q-card-main>
      </q-card>
    </q-page-sticky>

    <q-page-sticky position="bottom-left" :offset="[18, 18]">
      <q-carousel class="text-white" infinite autoplay >
      <q-carousel-slide>
        <q-card :flat=true>
              <q-card-title>
                Living room
              </q-card-title>
              <q-card-main>
                <div>Temperature: 31°C</div>
                <div>Humidity: 70%</div>
              </q-card-main>
            </q-card>
      </q-carousel-slide>
      <q-carousel-slide>
        <q-card :flat=true>
              <q-card-title>
                Chicken room
              </q-card-title>
              <q-card-main>
                <div>Temperature: 31°C</div>
                <div>Humidity: 70%</div>
              </q-card-main>
            </q-card>
      </q-carousel-slide>
      <q-carousel-slide>
        <q-card :flat=true>
              <q-card-title>
                Bed room
              </q-card-title>
              <q-card-main>
                <div>Temperature: 31°C</div>
                <div>Humidity: 70%</div>
              </q-card-main>
            </q-card>
      </q-carousel-slide>
    </q-carousel>
    </q-page-sticky>

    <q-page-sticky position="top" :offset="[18, 18]">
      <q-card :flat=true>
              <q-card-title v-text="currentDate"></q-card-title>
              <q-card-main class="text-center">
                <span class="q-display-3" v-text="currentTime"></span>
              </q-card-main>
            </q-card>
    </q-page-sticky>

    <q-page-sticky position="top-right" :offset="[18, 18]" style="width:250px" >
      <q-carousel class="text-white bg-tertiary"
        quick-nav
        height="200px"
      >
      <q-carousel-slide @click.native="showModal(index)" v-for="(item, index) in cameras" :key='index'>
        <img class="responsive" :src="cameraUrl(item.port)" />
        <div class="absolute-top custom-caption q-ml-sm">
          <div class="text-weight-medium">{{item.name}}</div>
          <div class="text-weight-regular">{{item.location}}</div>
        </div>
      </q-carousel-slide>
    </q-carousel>
    </q-page-sticky>

    <q-page-sticky position="bottom-right" :offset="[18, 18]">
      <q-btn round size="20px" class="q-ma-sm">
        <img class="avatar" src="https://pickaface.net/gallery/avatar/unr_taha_180618_0904_2f6faa0.png" />
      </q-btn>
      <q-btn round size="20px" class="q-ma-sm">
        <img class="avatar" src="https://pickaface.net/gallery/avatar/unr_room_180618_0413_ba8l.png" />
      </q-btn>
      <q-btn round size="20px" class="q-ma-sm">
        <img class="avatar" src="https://image.flaticon.com/icons/svg/163/163811.svg" />
      </q-btn>
      <q-btn round size="20px" class="q-ma-sm">
        <img class="avatar" src="https://image.flaticon.com/icons/svg/163/163834.svg" />
      </q-btn>
    </q-page-sticky>

    <q-modal v-model="maximizedModal" maximized :content-css="{padding: '0px'}" ref="modalRef">
      <q-card class="no-shadow bg-tertiary text-white fit" v-if="viewCamera">
        <q-card-title>
          {{viewCamera.name}}
          <span slot="subtitle" class="text-white">{{viewCamera.location}}</span>
        </q-card-title>
        <q-card-main align="center">
          <img class="responsive" :src="cameraUrl(viewCamera.port)" width="550px">
        </q-card-main>
        <q-card-actions align="center">
          <q-btn color="green" label="Open door" rounded=true />
          <q-btn color="red" v-close-overlay label="Close" rounded=true />
        </q-card-actions>
      </q-card>
    </q-modal>
  </q-page>
</template>

<script>
import gql from 'graphql-tag'
import { date } from 'quasar'

const cameraQuery = gql`
  {
    camerasWithLimit {
      name
      location
      port
    }
  }`

export default {
  name: 'Dashboard',
  data () {
    return {
      maximizedModal: false,
      currentWeather: null,
      weatherSetting: null,
      currentTime: null,
      currentDate: null,
      cameras: null,
      viewCamera: null
    }
  },
  methods: {
    showModal (index) {
      this.viewCamera = this.cameras[index]
      this.maximizedModal = true
    },
    getCurrentWeather () {
      var self = this
      let ws = JSON.parse(localStorage.getItem('weatherSetting'))
      this.weatherSetting = ws
      this.$axios.get('https://api.apixu.com/v1/current.json?key=' + ws.api_key + '&q=' + ws.location)
        .then((response) => {
          this.currentWeather = response.data
          setInterval(function () {
            self.getCurrentWeather()
          }, 1200000)
        })
        .catch(() => {
          this.$q.notify({
            color: 'negative',
            position: 'top',
            message: 'Loading failed',
            icon: 'report_problem'
          })
        })
    },
    updateCurrentTime () {
      let timeStamp = Date.now()
      let time = date.formatDate(timeStamp, 'HH:mm:ss')
      let today = date.formatDate(timeStamp, 'dddd, MMMM DD')
      this.currentTime = time
      this.currentDate = today
    },
    cameraUrl (port) {
      return process.env.MOTION + ':' + port
    }
  },
  created: function () {
    this.getCurrentWeather()
    setInterval(() => this.updateCurrentTime(), 1 * 1000)
  },
  apollo: {
    cameras: {
      query: cameraQuery,
      variables: {
        limit: 5
      },
      update: result => result.camerasWithLimit
    }
  },
  mqtt: {
    'homie/18fe34d58fac/$online': function (val) {
      console.log('homie/18fe34d58fac/$online')
    }
  }
}
</script>

<style lang="stylus">
</style>
