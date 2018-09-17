<template>
  <div class="fullscreen">
    <div class="row justify-start">
      <div class="col-1 refresh">
        <q-btn flat dense round icon="arrow_back" color="white" size="24px" />
      </div>
    </div>
    <div class="fixed-center text-center text-white" style="padding: 10px">
      <h4>Enter password for "LinkDigital"</h4>
      <q-field>
        <q-input type="password" placeholder="Password" color="white" :value="password" @accept="accept" @change="getValue" @focus="show" data-layout="normal"/>
        <p/>
        <q-btn label="Connect" outline=true rounded=true />
      </q-field>
    </div>
    <vue-touch-keyboard id="keyboard" v-if="visible" :layout="layout" :change="change" :cancel="hide" :accept="accept" :input="input" :next="next" />
  </div>
</template>

<script>
import VueTouchKeyboard from 'vue-touch-keyboard'
import 'vue-touch-keyboard/dist/vue-touch-keyboard.css'
export default {
  name: 'WifSetupPassword',
  components: {
    'vue-touch-keyboard': VueTouchKeyboard.component
  },
  data () {
    return {
      password: '',
      visible: false,
      layout: 'normal',
      input: null,
      options: {
        useKbEvents: false,
        preventClickEvent: false
      }
    }
  },
  methods: {
    accept (text) {
      this.hide()
    },

    show (e) {
      this.input = e.target
      this.layout = e.target.dataset.layout

      if (!this.visible) {
        this.visible = true
      }
    },

    change () {
      this.password = this.input.value
    },

    getValue (v) {
      console.log(v)
    },

    hide () {
      this.visible = false
    }
  }
}
</script>

<style lang="stylus">
  #keyboard
    position fixed
    left 0
    right 0
    bottom 0
    z-index 1000
    width 100%
    max-width 1000px
    margin 0 auto
    padding 1em
    background-color #EEE
    box-shadow 0px -3px 10px rgba(0, 0, 0, 0.3)
    border-radius 10px
</style>
