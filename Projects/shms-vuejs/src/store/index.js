import Vue from 'vue'
import Vuex from 'vuex'

import layoutDefault from './layoutDefault'

Vue.use(Vuex)

const store = new Vuex.Store({
  modules: {
    layoutDefault
  }
})

if (process.env.DEV && module.hot) {
  module.hot.accept(['./layoutDefault'], () => {
    const newLayoutDefault = require('./layoutDefault').default
    store.hotUpdate({ modules: { layoutDefault: newLayoutDefault } })
  })
}

export default store
