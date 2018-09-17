<template>
  <q-page class="text-white">
    <q-page-sticky position="bottom-right" :offset="[5, 5]">
      <span v-if="viewCamera">{{viewCamera.name}} - {{viewCamera.location}}</span>
    </q-page-sticky>
    <div class="row fit fixed">
      <div class="col-3 bg-tertiary">
        <q-scroll-area class="fit">
          <q-list class="no-border text-white" style="padding-bottom: 150px;">
            <q-list-header class="text-white">Camera</q-list-header>
            <div v-if="$apollo.loading">Loading...</div>
            <q-item v-ripple link @click.native="showCamera(index)" v-for="(item, index) in cameras" :key='index'>
              <q-item-side :image="cameraUrl(item.port)" />
              <q-item-separator />
            </q-item>
          </q-list>
        </q-scroll-area>
      </div>
      <div class="col-9 text-center q-pt-xl" v-if="viewCamera">
        <img :src="cameraUrl(viewCamera.port)" width="450px" />
      </div>
    </div>
  </q-page>
</template>

<script>
import gql from 'graphql-tag'

const cameraQuery = gql`
  {
    allCameras {
      name
      location
      port
    }
  }`

export default {
  name: 'Camera',
  data () {
    return {
      cameras: null,
      viewCamera: null
    }
  },
  methods: {
    showCamera (index) {
      this.viewCamera = this.cameras[index]
    },
    cameraUrl (port) {
      return process.env.MOTION + ':' + port
    }
  },
  created: function () {
    this.$apollo.queries.cameras.skip = false
    this.$apollo.queries.cameras.refetch()
    if (this.cameras) {
      this.viewCamera = this.cameras[0]
    }
  },
  apollo: {
    cameras: {
      query: cameraQuery,
      update: result => result.allCameras
    }
  }
}
</script>

<style>
</style>
