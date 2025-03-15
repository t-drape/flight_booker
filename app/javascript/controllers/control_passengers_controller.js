import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="control-passengers"
export default class extends Controller {
  static targets = ["passenger"]
  
  connect() {

  }

  add() {
    const form = document.querySelector("form")
    const count = (form.querySelectorAll("input").length - 3) / 2
    if (!(count == 4)) {
      const template = document.querySelector("#new_passenger")
  
      const clone = template.content.cloneNode(true)
      let input = clone.querySelectorAll("input")
      let label = clone.querySelectorAll("label")

      input[0].id = "booking_passengers_attributes_" + count + "_name"
      input[1].id = "booking_passengers_attributes_" + count + "_email"
      input[0].name = "booking[passengers_attributes][" + count + "][name]"
      input[1].name = "booking[passengers_attributes][" + count + "][email]"
      label[0].htmlFor = input[0].id
      label[1].htmlFor = input[1].id
  
      const ul = document.querySelector(".fields")
      ul.appendChild(clone)
    }
  }

  remove() {
    const count = document.querySelectorAll(".fields li input").length
    // Needs to be divided by two since name and email are both inputs
    if ((count/2) > 1) {
      this.element.remove()
      const fields = document.querySelectorAll(".fields li input")
      let new_index = 0
      for( let i = 0; i < (count - 2); i++) {
        if (i % 2 == 0 || i == 0) {
          fields[i].id = "booking_passengers_attributes_" + new_index + "_name"
          fields[i].name = "booking[passengers_attributes][" + new_index + "][name]"
        } else {
          fields[i].id = "booking_passengers_attributes_" + new_index + "_email"
          fields[i].name = "booking[passengers_attributes][" + new_index + "][email]"
          new_index++;
        }
      }
    }
  }
}
