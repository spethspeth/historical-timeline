import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form"]

  connect() {
    console.log("Hello dashboard")
  }

  display(){
    this.formTarget.classList.toggle("d-none")
  }
}
