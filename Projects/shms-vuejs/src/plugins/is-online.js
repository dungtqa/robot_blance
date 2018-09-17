const isOnline = require('is-online')
const wifiSetup = ['/wifi-setup', '/wifi-setup-password']

export default ({ app, router, Vue }) => {
  router.beforeEach((to, from, next) => {
    isOnline().then(online => {
      if (!online) {
        if (wifiSetup.indexOf(to.path) === -1) {
          router.push('/wifi-setup')
        } else {
          next()
        }
      } else {
        if (wifiSetup.indexOf(to.path) !== -1) {
          router.push('/dashboard')
        } else {
          next()
        }
      }
    })
  })
}
