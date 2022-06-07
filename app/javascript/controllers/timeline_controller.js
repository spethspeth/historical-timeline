import { Controller } from "stimulus"

export default class extends Controller {
  static values = { dates: Object }

  connect() {
    console.log("Hello!")
    console.log(Object.keys(this.datesValue))
    window.timeline = new TL.Timeline(this.element, this.datesValue)
  }
}
