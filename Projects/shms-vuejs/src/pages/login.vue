<template>
  <div class="fullscreen">
    <div class="fixed-center text-white login">
        <q-card class="bigger q-ma-sm" flat=true >
          <q-card-title class="text-center">
            <q-icon name="memory" size="108px" />
            <h4>Login</h4>
          </q-card-title>
          <q-card-main>
            <q-field>
              <q-input v-model="email" type="email" stack-label="Email" color="white"/>
            </q-field>
            <q-field>
              <q-input v-model="password" type="password" stack-label="Password" color="white" />
            </q-field>
          </q-card-main>
          <q-card-actions align="center">
            <q-btn outline=true rounded=true @click="login()" >Submit</q-btn>
          </q-card-actions>
        </q-card>
    </div>
    <vue-touch-keyboard id="keyboard" v-if="visible" :layout="layout" :change="change" :cancel="hide" :accept="accept" :input="input" :next="next" />
  </div>
</template>

<script>
import gql from 'graphql-tag'

const weatherQuery = gql`
  {
    getWeather {
      location
      temp_symbol
      api_key
    }
  }
`
const loginQuery = gql`
  mutation ($email: String!, $password: String!) {
    signinUser (auth: {email: $email, password: $password}) {
      token
      user {
        id
      }
    }
  }
`

export default {
  name: 'Login',
  data () {
    return {
      email: '',
      password: ''
    }
  },
  methods: {
    login () {
      this.$apollo.mutate({
        // Query
        mutation: loginQuery,
        // Parameters
        variables: {
          email: this.email,
          password: this.password
        }
      }).then((data) => {
        // Results
        localStorage.setItem('token', data.data.signinUser.token)
        this.$apollo.queries.weatherSetting.refetch()
        localStorage.setItem('weatherSetting', JSON.stringify(this.weatherSetting))
        this.$router.push('/dashboard')
      }).catch((error) => {
        // Error
        console.error(error)
      })
    }
  },
  apollo: {
    weatherSetting: {
      query: weatherQuery,
      update: result => result.getWeather
    }
  }
}
</script>

<style lang="stylus">
.login
  .q-card
    width 300px
  .bigger
    width 450px
    max-width 90vw
</style>
