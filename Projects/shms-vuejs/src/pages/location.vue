<template>
  <q-page class="text-white">
    <q-page-sticky position="top-right" :offset="[18, 10]">
      <span class="q-headline">Living room</span>
    </q-page-sticky>
    <div class="row fit fixed">
      <div class="col-3 bg-tertiary">
        <q-scroll-area class="fit">
        <q-list class="no-border text-white" style="padding-bottom: 150px;">
        <q-list-header class="text-white">Location</q-list-header>
        <q-item v-ripple>
          <q-item-main>
            Living room
          </q-item-main>
        </q-item>
        <q-item-separator />
        <q-item v-ripple>
          <q-item-main>
            Bed room
          </q-item-main>
        </q-item>
        <q-item-separator />
        <q-item v-ripple>
          <q-item-main>
            Dining room
          </q-item-main>
        </q-item>
        <q-item-separator />
        <q-item v-ripple>
          <q-item-main>
            Chicken room
          </q-item-main>
        </q-item>
        <q-item-separator />
        <q-item v-ripple>
          <q-item-main>
            Living room
          </q-item-main>
        </q-item>
        <q-item-separator />
        <q-item v-ripple>
          <q-item-main>
            Living room
          </q-item-main>
        </q-item>
        <q-item-separator />
        <q-item v-ripple>
          <q-item-main>
            Living room
          </q-item-main>
        </q-item>
        <q-item-separator />
      </q-list>
      </q-scroll-area>
      </div>
      <div class="col-9">
        <div class="row full-width">
        <div class="col-5">
          <q-tabs color="" style="width: 250px">
            <!-- Tabs - notice slot="title" -->
            <q-tab default slot="title" name="light" icon="highlight" label="Light" />
            <q-tab default slot="title" name="switch" icon="settings_input_hdmi" label="Switch" />
            <q-tab default slot="title" name="curtain" icon="settings_input_hdmi" label="Curtain" />

            <!-- Targets -->
            <q-tab-pane class="no-border" name="light">
              <q-card inline class="q-ma-sm" style="width: 220px">
                <q-card-title>
                  Light <q-toggle class="float-right"/>
                </q-card-title>
                <q-card-separator />
                <q-card-main>
                  <q-scroll-area style="width: 200px; height: 150px;">
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Light 1
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showLightModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Light 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showLightModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Light 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showLightModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Light 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showLightModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Light 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showLightModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                  </q-scroll-area>
                </q-card-main>
              </q-card>
            </q-tab-pane>
            <q-tab-pane class="no-border" name="switch">
              <q-card inline class="q-ma-sm" style="width: 220px">
                <q-card-title>
                  Switch <q-toggle class="float-right"/>
                </q-card-title>
                <q-card-separator />
                <q-card-main>
                  <q-scroll-area style="width: 200px; height: 150px;">
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Switch 1
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showSwitchModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Switch 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showSwitchModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Switch 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showSwitchModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Switch 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showSwitchModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Switch 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-toggle />
                        <q-btn flat round dense icon="settings" @click="showSwitchModal" class="text-white" />
                      </q-item-side>
                    </q-item>
                  </q-scroll-area>
                </q-card-main>
              </q-card>
            </q-tab-pane>
            <q-tab-pane class="no-border" name="curtain">
              <q-card inline class="q-ma-sm" style="width: 220px">
                <q-card-title>
                  Curtain <q-toggle class="float-right"/>
                </q-card-title>
                <q-card-separator />
                <q-card-main>
                  <q-scroll-area style="width: 200px; height: 150px;">
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Curtain 1
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-btn flat round dense icon="border_clear" class="text-white" />
                        <q-btn flat round dense icon="view_array" class="text-white" />
                        <q-btn flat round dense icon="border_vertical" class="text-white" />
                      </q-item-side>
                    </q-item>
                    <q-item dense >
                      <q-item-side>
                        <q-item-tile class="text-white">
                          Curtain 2
                        </q-item-tile>
                      </q-item-side>
                      <q-item-main />
                      <q-item-side right>
                        <q-btn flat round dense icon="border_clear" class="text-white" />
                        <q-btn flat round dense icon="view_array" class="text-white" />
                        <q-btn flat round dense icon="border_vertical" class="text-white" />
                      </q-item-side>
                    </q-item>
                  </q-scroll-area>
                </q-card-main>
              </q-card>
            </q-tab-pane>
          </q-tabs>
        </div>
        <div class="col-7 q-mt-xl">
          <div class="row">
            <div class="col">
              <q-item>
                <q-item-main label="Humidity" sublabel="" />
                <q-item-side right >
                  <q-knob
                    v-model="humidity"
                    :min="min"
                    :max="max"
                    color="primary"
                    readonly
                    size="50px"
                  >
                    {{humidity}}%
                  </q-knob>
                </q-item-side>
              </q-item>
              <q-item>
                <q-item-main label="CO2" sublabel="" />
                <q-item-side right >
                  <q-chip color="green" small>
                    {{co2}}
                  </q-chip>
                </q-item-side>
              </q-item>
            </div>
            <div class="col">
              <q-item>
                <q-item-main label="Temperature" sublabel="" />
                <q-item-side right >
                  <q-knob
                    v-model="temperature"
                    :min="min"
                    :max="max"
                    color="primary"
                    readonly
                    size="50px"
                  >
                    {{temperature}}°C
                  </q-knob>
                </q-item-side>
              </q-item>
              <q-item>
                <q-item-main label="Gas" sublabel="" />
                <q-item-side right >
                  <q-chip color="green" small>
                    {{gas}}
                  </q-chip>
                </q-item-side>
              </q-item>
            </div>
          </div>
          <div class="row">
            <q-list class="no-border fit">
              <q-item>
                <q-item-main label="Ariconditioning" sublabel="" />
                <q-item-side right >
                  <q-toggle />
                </q-item-side>
              </q-item>
              <q-item>
                <q-item-side left class="text-white" >
                  <q-btn icon="brightness_5" round flat size="20px" />
                  <q-btn icon="toys" round flat size="20px" />
                </q-item-side>
                <q-item-main class="text-center">
                  <q-knob
                    v-model="air_temperature"
                    :min="min"
                    :max="max"
                    color="primary"
                    readonly
                    size="50px"
                    @click="showing_temp = true"
                  >
                    {{air_temperature}}°C
                  </q-knob>
                  <q-popover v-model="showing_temp">
                    <q-item>
                      <q-item-side left >
                        <q-btn icon="exposure_neg_1" round />
                      </q-item-side>
                      <q-item-main class="text-center">
                        <q-knob
                          v-model="air_temperature"
                          :min="min"
                          :max="max"
                          color="primary"
                          readonly
                          size="50px"
                        >
                          {{air_temperature}}°C
                        </q-knob>
                      </q-item-main>
                      <q-item-side right >
                        <q-btn icon="exposure_plus_1" round />
                      </q-item-side>
                    </q-item>
                  </q-popover>
                </q-item-main>
                <q-item-side right class="text-white" >
                  <q-btn icon="access_alarm" round flat size="20px" />
                  <q-btn icon="data_usage" round flat size="20px" />
                </q-item-side>
              </q-item>
            </q-list>
          </div>
          <div class="row">
            <q-item class="fit">
              <q-item-main label="Lock" sublabel="" />
              <q-item-side right >
                <q-toggle />
              </q-item-side>
            </q-item>
          </div>
        </div>
      </div>
      </div>
    </div>
    <q-modal v-model="lightModal" minimized>
      <q-tabs align="justify">
        <q-tab default name="schedule" slot="title" icon="schedule" label="Schedule" />
        <q-tab name="color" slot="title" icon="color_lens" label="Color" />
        <q-tab name="dimer" slot="title" icon="wb_incandescent" label="Dimer" />

        <q-tab-pane name="schedule">
          <q-item >
            <q-item-side icon="access_time" />
            <q-item-tile>
              From:
            </q-item-tile>
            <q-item-main>
              <q-datetime class="no-margin" v-model="from" type="time" />
            </q-item-main>
          </q-item>
          <q-item >
            <q-item-side icon="access_time" />
            <q-item-tile>
              To:
            </q-item-tile>
            <q-item-main>
              <q-datetime class="no-margin" v-model="to" type="time" />
            </q-item-main>
          </q-item>
          <q-item >
            <div class="row fit">
              <div class="col q-pa-sm bg-tertiary text-white">
                M
              </div>
              <div class="col q-pa-sm bg-tertiary text-white">
                T
              </div>
              <div class="col q-pa-sm">
                W
              </div>
              <div class="col q-pa-sm bg-tertiary text-white">
                T
              </div>
              <div class="col q-pa-sm">
                F
              </div>
              <div class="col q-pa-sm bg-tertiary text-white">
                S
              </div>
              <div class="col q-pa-sm">
                S
              </div>
            </div>
          </q-item>
          <q-item>
            <div class="fit text-center">
              <q-btn color="primary" @click="lightModal = false" label="Close" />
            </div>
          </q-item>
        </q-tab-pane>
        <q-tab-pane name="color">
          <q-color-picker v-model="modelRgb" />
        </q-tab-pane>
        <q-tab-pane name="dimer">
           <q-list>
             <q-item>
               <q-item-side icon="brightness_low" />
               <q-item-main>
                 <q-slider color="orange" v-model="standard" :min="0" :max="100" label />
               </q-item-main>
             <q-item-side right icon="brightness_high" />
           </q-item>
         </q-list>
        </q-tab-pane>
      </q-tabs>
    </q-modal>
    <q-modal v-model="switchModal" minimized>
      <q-tabs align="justify">
        <q-tab default name="schedule" slot="title" icon="schedule" label="Schedule" />

        <q-tab-pane name="schedule">
          <q-item >
            <q-item-side icon="access_time" />
            <q-item-tile>
              From:
            </q-item-tile>
            <q-item-main>
              <q-datetime class="no-margin" v-model="from" type="time" />
            </q-item-main>
          </q-item>
          <q-item >
            <q-item-side icon="access_time" />
            <q-item-tile>
              To:
            </q-item-tile>
            <q-item-main>
              <q-datetime class="no-margin" v-model="to" type="time" />
            </q-item-main>
          </q-item>
          <q-item >
            <div class="row fit">
              <div class="col q-pa-sm bg-tertiary text-white">
                M
              </div>
              <div class="col q-pa-sm bg-tertiary text-white">
                T
              </div>
              <div class="col q-pa-sm">
                W
              </div>
              <div class="col q-pa-sm bg-tertiary text-white">
                T
              </div>
              <div class="col q-pa-sm">
                F
              </div>
              <div class="col q-pa-sm bg-tertiary text-white">
                S
              </div>
              <div class="col q-pa-sm">
                S
              </div>
            </div>
          </q-item>
          <q-item>
            <div class="fit text-center">
              <q-btn color="primary" @click="switchModal = false" label="Close" />
            </div>
          </q-item>
        </q-tab-pane>
      </q-tabs>
    </q-modal>
  </q-page>
</template>

<script>
export default {
  // name: 'PageName',
  data () {
    return {
      check: false,
      showing: false,
      from: undefined,
      to: undefined,
      lightModal: false,
      switchModal: false,
      temperature: 29,
      air_temperature: 25,
      humidity: 20,
      co2: 530,
      gas: 247,
      min: 0,
      max: 100,
      showing_temp: false
    }
  },
  methods: {
    showLightModal () {
      this.lightModal = true
    },
    showSwitchModal () {
      this.switchModal = true
    }
  },
  computed: {
    leftDrawerOpen: {
      get () { return this.$store.state.layoutDefault.leftDrawerOpen },
      set (val) { this.$store.commit('layoutDefault/setLeftDrawerOpen', val) }
    }
  }
}
</script>

<style>
</style>
