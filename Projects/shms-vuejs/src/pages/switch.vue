<template>
  <q-page class="text-white">
    <q-page-sticky position="top-right" :offset="[18, 18]">
      <q-icon name="settings_input_hdmi" size="24px" /> <q-toggle label="Switches(20)" left-label=true />
    </q-page-sticky>
    <div class="row fit fixed q-mt-xl">
      <q-scroll-area class="fit text-center" style="padding-bottom: 220px;">
        <q-card inline class="q-ma-sm" style="width: 220px">
          <q-card-title>
            Living room <q-toggle class="float-right"/>
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
                </q-item-side>
              </q-item>
            </q-scroll-area>
          </q-card-main>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px">
          <q-card-title>
            Living room <q-toggle class="float-right"/>
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
                </q-item-side>
              </q-item>
            </q-scroll-area>
          </q-card-main>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px">
          <q-card-title>
            Living room <q-toggle class="float-right"/>
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
                </q-item-side>
              </q-item>
            </q-scroll-area>
          </q-card-main>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px">
          <q-card-title>
            Living room <q-toggle class="float-right"/>
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
                </q-item-side>
              </q-item>
            </q-scroll-area>
          </q-card-main>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px">
          <q-card-title>
            Living room <q-toggle class="float-right"/>
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
                </q-item-side>
              </q-item>
            </q-scroll-area>
          </q-card-main>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px">
          <q-card-title>
            Living room <q-toggle class="float-right"/>
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
                </q-item-side>
              </q-item>
            </q-scroll-area>
          </q-card-main>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px">
          <q-card-title>
            Living room <q-toggle class="float-right"/>
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
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
                  <q-btn flat round dense icon="settings" @click="showModal" class="text-white" />
                </q-item-side>
              </q-item>
            </q-scroll-area>
          </q-card-main>
        </q-card>
      </q-scroll-area>
    </div>

    <q-modal v-model="minimizedModal" minimized>
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
      minimizedModal: false
    }
  },
  methods: {
    showModal () {
      this.minimizedModal = true
    }
  }
}
</script>

<style>
</style>
