import { Controller } from "stimulus"

export default class extends Controller {
  static values = { dates: Object }

  additionalOptions = {
    start_at_end: false,
    default_bg_color: {r:199, g:194, b:184},
    use_bc: true
  }

  connect() {
    window.timeline = new TL.Timeline(this.element, this.datesValue, this.additionalOptions)
  }
}
