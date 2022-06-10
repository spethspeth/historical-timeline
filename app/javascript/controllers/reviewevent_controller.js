import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["review"]

  connect() {
    console.log(this.element)
    console.log(this.formTarget)
  }

  reviewEvent() {

  }
}
