<template>
  <q-page padding class="text-white">
    <q-page-sticky position="top" :offset="[18, 18]" class="q-headline">
      Camera setting
    </q-page-sticky>
    <q-page-sticky position="top-right" :offset="[18, 18]">
      <q-btn label="Add new camera" @click="showModal" outline=true rounded=true />
    </q-page-sticky>
    <div v-if="$apollo.loading">Loading...</div>
    <div class="row fit fixed q-mt-xl" v-if="cameras && cameras.length">
      <q-scroll-area class="fit" style="padding-bottom: 220px;">
        <q-card inline class="q-ma-sm" style="width: 220px;" v-for="(item, index) in cameras" :key='index'>
          <q-card-media>
            <img class="responsive" :src="cameraUrl(item.port)">
          </q-card-media>
          <q-card-title>
            {{item.name}} - {{item.location}}
          </q-card-title>
          <q-card-separator />
          <q-card-actions align="center">
            <q-btn outline=true rounded=true label="Edit" @click.native="showModalEdit(index)" />
            <q-btn outline=true rounded=true label="Remove" @click="showDialog(item.id)" />
          </q-card-actions>
        </q-card>
      </q-scroll-area>
    </div>
    <q-modal v-model="minimizedModal" minimized>
      <q-tabs align="justify">
        <q-tab default name="addcamera" slot="title" icon="linked_camera" label="Camera" />

        <q-tab-pane name="addcamera">
          <q-field>
            <q-input type="text" stack-label="Name" v-model="name"/>
          </q-field>
          <q-field>
            <q-input type="text" stack-label="Location" v-model="location"/>
          </q-field>
          <q-field>
            <q-input type="text" stack-label="Url" v-model="url"/>
          </q-field>
          <q-field>
            <q-input type="text" stack-label="Username" v-model="username"/>
          </q-field>
          <q-field>
            <q-input type="password" stack-label="Password" v-model="password"/>
          </q-field>
          <q-item>
            <div class="fit text-center">
              <q-btn color="primary" @click="minimizedModal = false" label="Close" />
              <q-btn color="primary" label="Submit" @click="createCamera" />
            </div>
          </q-item>
        </q-tab-pane>
      </q-tabs>
    </q-modal>
    <q-modal v-model="minimizedModalEdit" minimized v-if="editCamera">
      <q-tabs align="justify">
        <q-tab default name="editcamera" slot="title" icon="linked_camera" label="Camera" />

        <q-tab-pane name="editcamera">
          <q-field>
            <q-input type="text" stack-label="Name" v-model="name_edit"/>
          </q-field>
          <q-field>
            <q-input type="text" stack-label="Location" v-model="location_edit"/>
          </q-field>
          <q-item>
            <div class="fit text-center">
              <q-btn color="primary" @click="minimizedModalEdit = false" label="Close" />
              <q-btn color="primary" label="Submit" @click="updateCamera()" />
            </div>
          </q-item>
        </q-tab-pane>
      </q-tabs>
    </q-modal>
  </q-page>
</template>

<script>
import gql from 'graphql-tag'

const cameraQuery = gql`
  {
    allCameras {
      id
      name
      location
      port
    }
  }`

const createCameraQuery = gql`
  mutation ($name: String!, $location: String!, $url: String!, $username: String!, $password: String!) {
    createCamera (name: $name, location: $location, url: $url, username: $username, password: $password) {
      name
      location
      port
    }
  }
`

const editCameraQuery = gql`
  mutation ($id: Int!, $name: String!, $location: String!) {
    editCamera (id: $id, name: $name, location: $location) {
      id
      name
      location
    }
  }
`

const deleteCameraQuery = gql`
  mutation ($id: Int!) {
    deleteCamera (id: $id) {
      id
      name
      location
    }
  }
`

export default {
  name: 'CameraSetting',
  data () {
    return {
      name: null,
      location: null,
      url: null,
      username: '',
      password: '',
      editCamera: {},
      minimizedModal: false,
      minimizedModalEdit: false
    }
  },
  methods: {
    showModal () {
      this.minimizedModal = true
    },
    showModalEdit (index) {
      this.editCamera = this.cameras[index]
      this.name_edit = this.editCamera.name
      this.location_edit = this.editCamera.location
      this.minimizedModalEdit = true
    },
    showDialog (id) {
      this.$q.dialog({
        title: 'Confirm',
        message: 'Are you sure remove camera?',
        ok: 'Agree',
        cancel: 'Disagree'
      }).then(() => {
        this.$apollo.mutate({
          // Query
          mutation: deleteCameraQuery,
          // Parameters
          variables: {
            id: id
          }
        }).then((data) => {
          // Results
          this.getCameras()
        }).catch((error) => {
          // Error
          console.error(error)
        })
      }).catch(() => {
      })
    },
    getCameras () {
      this.$apollo.queries.cameras.skip = false
      this.$apollo.queries.cameras.refetch()
    },
    cameraUrl (port) {
      return process.env.MOTION + ':' + port
    },
    createCamera () {
      this.$apollo.mutate({
        // Query
        mutation: createCameraQuery,
        // Parameters
        variables: {
          name: this.name,
          location: this.location,
          url: this.url,
          username: this.username,
          password: this.password
        }
      }).then((data) => {
        // Results
        this.name = null
        this.location = null
        this.url = null
        this.username = ''
        this.password = ''
        this.getCameras()
        this.minimizedModal = false
      }).catch((error) => {
        // Error
        console.error(error)
      })
    },
    updateCamera () {
      this.$apollo.mutate({
        // Query
        mutation: editCameraQuery,
        // Parameters
        variables: {
          id: this.editCamera.id,
          name: this.name_edit,
          location: this.location_edit
        }
      }).then((data) => {
        // Results
        this.getCameras()
        this.minimizedModalEdit = false
      }).catch((error) => {
        // Error
        console.error(error)
      })
    }
  },
  created: function () {
    this.getCameras()
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
