import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="read-more"
export default class extends Controller {
  connect() {
    //super.connect()
    console.log('Do what you want here.')
  }

  // Function to override on toggle.
  toggle(event) {}

  // Function to override when the text is shown.
  show(event) {}

  // Function to override when the text is hidden.
  hide(event) {}
}
