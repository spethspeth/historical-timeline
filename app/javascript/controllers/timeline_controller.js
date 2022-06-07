import { Controller } from "stimulus"

export default class extends Controller {
  static values = { dates: Object }

  additionalOptions = {
    start_at_end: false,
    default_bg_color: {r:155, g:17, b:30},
    timenav_height: 600,
    hash_bookmark: true
  }

  connect() {
    window.timeline = new TL.Timeline(this.element, this.datesValue, this.additionalOptions)
  }
}
