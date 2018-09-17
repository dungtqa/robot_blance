export default ({ app, router, store, Vue }) => {
  router.beforeEach((to, from, next) => {
    let path = to.path
    if (path.includes('/dashboard')) {
      let token = localStorage.getItem('token')
      if (token) {
        next()
      } else {
        router.push('/login')
      }
    } else {
      next()
    }
  })
}
