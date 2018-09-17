import VueMqtt from 'vue-mqtt'

export default ({ app, router, Vue }) => {
  Vue.use(VueMqtt, process.env.MQTT, {clientId: 'WebClient-' + parseInt(Math.random() * 100000), keepalive: 120})
}
