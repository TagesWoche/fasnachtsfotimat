'use strict'

if (module.hot) {
  module.hot.accept()
}

const imageData = "php code here"
import { mount } from 'riot'
import '../styles/index.scss'
import './components/fotimat-app.tag'
import './components/fotimat-overview.tag'
import './components/fotimat-gallery.tag'

mount('fotimat-app', {
  imageData: imageData
})
