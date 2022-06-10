import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["form", "reviewbutton"]

  connect() {
    console.log(this.element)
    console.log(this.formTarget)
  }

  submitForm(event) {
    event.preventDefault()
    console.log("Listen to AJAX")
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
    })
  }
}
