import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["bookmark"]

  connect() {
    console.log("Hello popup!")
    console.log(this.targetBookmark)
  }

  show(){
    this.bookmarkTarget.classList.remove("d-none")
  }

  hide(){
    this.bookmarkTarget.classList.add("d-none")
  }
}
