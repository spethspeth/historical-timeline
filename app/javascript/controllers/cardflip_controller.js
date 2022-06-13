import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["card"]

  connect() {
    console.log("Flip it all!")
  }

  flip(){
    this.cardTarget.classList.toggle("flipCard")
  }
}
