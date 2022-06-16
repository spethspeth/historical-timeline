import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["unbookmark"]

  connect() {
    console.log("Hello popup!")
    console.log(this.element)
    console.log(this.targetBookmark)
  }

  show(){
    this.unbookmarkTarget.classList.remove("d-none")
  }

  hide(){
    this.unbookmarkTarget.classList.add("d-none")
  }
}
