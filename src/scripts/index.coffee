require '../styles/index.styl'

Vue = require 'vue'
App = require '../components/App.vue'

new Vue
  el: '#app'
  render: (h) -> h App
