<template>
  <q-page padding class="text-white">
    <q-page-sticky position="top" :offset="[18, 18]" class="q-headline">
      Weather setting
    </q-page-sticky>
    <div class="row fixed-center">
      <q-card inline class="q-ma-sm" flat=true >
          <q-card-main >
            <q-field icon="place">
              <q-input type="text" v-model="location" float-label="Location" color="white">
                <q-autocomplete
                  @search="search"
                  :min-characters="3"
                  @selected="selected"
                />
              </q-input>
            </q-field>
            <q-field>
              <q-btn-toggle
                flat=true
                v-model="tmp"
                :options="[
                  {label: '°C', value: 'tmp_c'},
                  {label: '°F', value: 'tmp_f'}
                ]"
              />
            </q-field>
            <q-field icon="">
              <q-input type="text" v-model="api_key" float-label="Api key" color="white" />
            </q-field>
          </q-card-main>
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Save" @click="updateSetting()" />
          </q-card-actions>
        </q-card>
    </div>
  </q-page>
</template>

<script>
import gql from 'graphql-tag'

const weatherQuery = gql`
  mutation ($location: String!, $temp_symbol: String!, $api_key: String!) {
    settingWeather (location: $location, temp_symbol: $temp_symbol, api_key: $api_key) {
      location
      temp_symbol
      api_key
    }
  }
  `

export default {
  name: 'WeatherSetting',
  data () {
    return {
      location: null,
      tmp: null,
      api_key: null
    }
  },
  methods: {
    updateSetting () {
      this.$apollo.mutate({
        // Query
        mutation: weatherQuery,
        // Parameters
        variables: {
          location: this.location,
          temp_symbol: this.tmp,
          api_key: this.api_key
        }
      }).then((data) => {
        // Results
        localStorage.setItem('weatherSetting', JSON.stringify(data.data.settingWeather))
        this.$q.notify({
          color: 'negative',
          position: 'top',
          message: 'Update success',
          icon: 'report_problem'
        })
      }).catch((error) => {
        // Error
        console.error(error)
      })
    }
  },
  created: function () {
    let ws = JSON.parse(localStorage.getItem('weatherSetting'))
    this.location = ws.location
    this.tmp = ws.temp_symbol
    this.api_key = ws.api_key
  }
}
</script>

<style>
</style>
