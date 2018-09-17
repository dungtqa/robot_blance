<template>
  <q-page class="text-white">
    <q-page-sticky position="top" :offset="[18, 18]">
      <q-card flat=true>
              <q-card-title>
                {{location.name}}, {{location.country}}
                <span slot="subtitle" class="text-white" v-text="dateDisplay(location.localtime)"></span>
              </q-card-title>
              <q-card-main>
                <span class="q-display-1"><img :src="current.condition.icon" />
                  <span v-if="weatherSetting.temp_symbol === 'tmp_c'">{{current.temp_c}}°C</span>
                  <span v-if="weatherSetting.temp_symbol === 'tmp_f'">{{current.temp_f}}°F</span>
                </span>
                <div class="row">{{current.condition.text}}</div>
              </q-card-main>
            </q-card>
    </q-page-sticky>

    <q-page-sticky position="bottom" class="shms-weather-bottom bg-tertiary">
      <div class="row">
          <div class="col" v-for="(item, index) in forecast" :key='index'>
            <q-card flat=true>
              <q-card-title v-text="dateDisplay(item.date)"></q-card-title>
              <q-card-main>
                <span class="q-display-1"><img :src="item.day.condition.icon" width="48px" />
                  <span v-if="weatherSetting.temp_symbol === 'tmp_c'" class="q-subheading">{{item.day.maxtemp_c}}°C</span>
                  <span v-if="weatherSetting.temp_symbol === 'tmp_f'" class="q-subheading">{{item.day.maxtemp_f}}°F</span>
                </span>
                <div class="row" v-text="item.day.condition.text"></div>
              </q-card-main>
            </q-card>
          </div>
        </div>
    </q-page-sticky>

  </q-page>
</template>

<script>
import { date } from 'quasar'
export default {
  name: 'Weather',
  data () {
    return {
      location: null,
      weatherSetting: null,
      current: null,
      forecast: null
    }
  },
  methods: {
    getForecastWeather () {
      var self = this
      let ws = JSON.parse(localStorage.getItem('weatherSetting'))
      this.weatherSetting = ws
      this.$axios.get('https://api.apixu.com/v1/forecast.json?key=' + ws.api_key + '&q=' + ws.location + '&days=5')
        .then((response) => {
          this.location = response.data.location
          this.current = response.data.current
          this.forecast = response.data.forecast.forecastday
          setInterval(function () {
            self.getForecastWeather()
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
    dateDisplay (dt) {
      let strDate = date.formatDate(dt, 'dddd, MMMM DD')
      return strDate
    }
  },
  created: function () {
    this.getForecastWeather()
  }
}
</script>

<style lang="stylus">
  .shms-weather-bottom > span
    width: 100%
</style>
