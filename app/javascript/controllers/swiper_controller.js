import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="swiper"
export default class extends Controller {

  connect() {
    // const carousel = this.element
    // carousel.addEventListener('slide.bs.carousel', (event) => {
    //   const activeSpot = document.querySelector(".active").nextElementSibling
    //   const spotId = activeSpot.dataset.spotid
    //   const likebtn = document.getElementById(`like-spot-${spotId}`)
    //   const dislikebtn = document.getElementById(`dislike-spot-${spotId}`)

    //   if (event.direction === "left") {
    //     dislikebtn.click()
    //   } else {
    //     likebtn.click()
    //   }
    // })
  }
}
