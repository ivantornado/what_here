import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="btn-change"
export default class extends Controller {
  static targets = ["button1", "button2", "button3", "button4", "button5", "button6", "button7"]
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
