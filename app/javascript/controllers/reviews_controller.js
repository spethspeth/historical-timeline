import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["newreviews", "form"]

  connect() {
    console.log(this.element)
    console.log(this.newreviewsTarget)
    console.log(this.formTarget)
  }

  send(e) {
    e.preventDefault()
    console.log("TODO: send request in AJAX")
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_item) {
          this.newreviewsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        // this.formTarget.outerHTML = data.form
      })
  }
}
