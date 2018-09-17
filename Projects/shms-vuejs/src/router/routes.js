
const routes = [
  {
    path: '/', component: () => import('pages/splash')
  },
  {
    path: '/wifi-setup', component: () => import('pages/wifi-setup')
  },
  {
    path: '/wifi-setup-password', component: () => import('pages/wifi-setup-password')
  },
  {
    path: '/login', component: () => import('pages/login')
  },
  {
    path: '/dashboard',
    component: () => import('layouts/default'),
    children: [
      { path: '', component: () => import('pages/dashboard') },
      { path: 'weather', component: () => import('pages/weather') },
      { path: 'switch', component: () => import('pages/switch') },
      { path: 'light', component: () => import('pages/light') },
      { path: 'location', component: () => import('pages/location') },
      { path: 'camera', component: () => import('pages/camera') },
      { path: 'music', component: () => import('pages/music') },
      { path: 'setting-weather', component: () => import('pages/setting-weather') },
      { path: 'setting-device', component: () => import('pages/setting-device') },
      { path: 'setting-camera', component: () => import('pages/setting-camera') }
    ]
  }
]

// Always leave this as last one
if (process.env.MODE !== 'ssr') {
  routes.push({
    path: '*',
    component: () => import('pages/Error404.vue')
  })
}

export default routes
