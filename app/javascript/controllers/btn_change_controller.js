import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="btn-change"
export default class extends Controller {
  connect() {
    console.log("hello from change btn")
  }

  colorChange(event) {
    if (event.currentTarget.classList.contains('btn-category')) {
      event.currentTarget.classList.remove('btn-category')
      event.currentTarget.classList.add('active')
    } else {
      event.currentTarget.classList.remove('active')
      event.currentTarget.classList.add('btn-category')
    }
  }
}
