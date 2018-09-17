<template>
  <q-page padding class="text-white">
    <q-page-sticky position="top-left" :offset="[18, 18]" class="q-headline">
      <div class="row" style="width: 100px">
        <q-select
          color="white"
          dark
          v-model="select"
          :options="selectOptions"
          />
      </div>
    </q-page-sticky>
    <q-page-sticky position="top" :offset="[18, 18]" class="q-headline">
      Device setting
    </q-page-sticky>
    <q-page-sticky position="top-right" :offset="[18, 18]">
      <q-btn label="Add new device" @click="showModal" outline=true rounded=true />
    </q-page-sticky>
    <div class="row fit fixed q-mt-xl">
      <q-scroll-area class="fit" style="padding-bottom: 220px;">
        <q-card inline class="q-ma-sm" style="width: 220px;">
          <q-card-title>
            Device name
            <span class="text-white" slot="subtitle"><q-icon name="place" /> Location</span>
          </q-card-title>
          <q-list>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Firmware version: 1.0</q-item-tile>
                </q-item-main>
              </q-item>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Status: <q-chip color="green" small>Connect</q-chip></q-item-tile>
                </q-item-main>
              </q-item>
           </q-list>
          <q-card-separator />
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Edit" />
            <q-btn outline=true rounded=true label="Remove" @click="showDialog" />
          </q-card-actions>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px;">
          <q-card-title>
            Device name
            <span class="text-white" slot="subtitle"><q-icon name="place" /> Location</span>
          </q-card-title>
          <q-list>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Firmware version: 1.0</q-item-tile>
                </q-item-main>
              </q-item>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Status: <q-chip color="green" small>Connect</q-chip></q-item-tile>
                </q-item-main>
              </q-item>
           </q-list>
          <q-card-separator />
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Edit" />
            <q-btn outline=true rounded=true label="Remove" @click="showDialog" />
          </q-card-actions>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px;">
          <q-card-title>
            Device name
            <span class="text-white" slot="subtitle"><q-icon name="place" /> Location</span>
          </q-card-title>
          <q-list>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Firmware version: 1.0</q-item-tile>
                </q-item-main>
              </q-item>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Status: <q-chip color="green" small>Connect</q-chip></q-item-tile>
                </q-item-main>
              </q-item>
           </q-list>
          <q-card-separator />
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Edit" />
            <q-btn outline=true rounded=true label="Remove" @click="showDialog" />
          </q-card-actions>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px;">
          <q-card-title>
            Device name
            <span class="text-white" slot="subtitle"><q-icon name="place" /> Location</span>
          </q-card-title>
          <q-list>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Firmware version: 1.0</q-item-tile>
                </q-item-main>
              </q-item>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Status: <q-chip color="green" small>Connect</q-chip></q-item-tile>
                </q-item-main>
              </q-item>
           </q-list>
          <q-card-separator />
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Edit" />
            <q-btn outline=true rounded=true label="Remove" @click="showDialog" />
          </q-card-actions>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px;">
          <q-card-title>
            Device name
            <span class="text-white" slot="subtitle"><q-icon name="place" /> Location</span>
          </q-card-title>
          <q-list>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Firmware version: 1.0</q-item-tile>
                </q-item-main>
              </q-item>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Status: <q-chip color="green" small>Connect</q-chip></q-item-tile>
                </q-item-main>
              </q-item>
           </q-list>
          <q-card-separator />
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Edit" />
            <q-btn outline=true rounded=true label="Remove" @click="showDialog" />
          </q-card-actions>
        </q-card>
        <q-card inline class="q-ma-sm" style="width: 220px;">
          <q-card-title>
            Device name
            <span class="text-white" slot="subtitle"><q-icon name="place" /> Location</span>
          </q-card-title>
          <q-list>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Firmware version: 1.0</q-item-tile>
                </q-item-main>
              </q-item>
              <q-item>
                <q-item-main>
                  <q-item-tile label>Status: <q-chip color="green" small>Connect</q-chip></q-item-tile>
                </q-item-main>
              </q-item>
           </q-list>
          <q-card-separator />
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Edit" />
            <q-btn outline=true rounded=true label="Remove" @click="showDialog" />
          </q-card-actions>
        </q-card>
      </q-scroll-area>
    </div>
    <q-modal v-model="minimizedModal" minimized @hide="cancel">
      <q-tabs align="justify">
        <q-tab default name="addcamera" slot="title" icon="developer_board" label="Device" />
        <q-tab-pane name="addcamera">
          <q-item ref="device_scan" v-bind:class="{hidden: isHiddenDeviceScan}">
            <div class="fit text-center">
              <q-btn
                :loading="loading"
                label="Scan"
                color="primary"
                @click="handler"
              >
              </q-btn>
            </div>
          </q-item>
          <q-item-separator />
          <q-item ref="device_founded" v-bind:class="{hidden: isHiddenDeviceFound}">
            <q-card flat=true>
              <q-card-main>
                <p>Type: Light</p>
                <p>Firmware version: 1.0</p>
                <q-field>
                  <q-input type="text" stack-label="Name"/>
                </q-field>
                <q-field>
                  <q-input type="text" stack-label="Location"/>
                </q-field>
                <q-item>
                  <div class="fit text-center">
                    <q-btn color="primary" @click="cancel" label="Cancel" />
                    <q-btn color="primary" label="Submit" />
                  </div>
                </q-item>
              </q-card-main>
            </q-card>
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
      minimizedModal: false,
      loading: false,
      isHiddenDeviceFound: true,
      isHiddenDeviceScan: false,
      select: 'all',
      selectOptions: [
        {
          label: 'All location',
          value: 'all'
        },
        {
          label: 'Location 1',
          value: 'Location 1'
        },
        {
          label: 'Location 2',
          value: 'Location 2'
        }
      ]
    }
  },
  methods: {
    showModal () {
      this.minimizedModal = true
    },
    showDialog () {
      this.$q.dialog({
        title: 'Confirm',
        message: 'Are you sure remove device?',
        ok: 'Agree',
        cancel: 'Disagree'
      }).then(() => {
        this.$q.notify('Agreed!')
      }).catch(() => {
        this.$q.notify('Disagreed...')
      })
    },
    handler () {
      this.loading = true
      // we simulate a delay here:
      setTimeout(() => {
        this.loading = false
        this.isHiddenDeviceFound = false
        this.isHiddenDeviceScan = true
      }, 3000)
    },
    cancel () {
      this.isHiddenDeviceFound = true
      this.isHiddenDeviceScan = false
    }
  }
}
</script>

<style>
</style>
