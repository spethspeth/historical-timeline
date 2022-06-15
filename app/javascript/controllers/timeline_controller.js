import { Controller } from "stimulus"

export default class extends Controller {
  static values = { dates: Object }

  additionalOptions = {
    start_at_end: false,
    default_bg_color: {r:255, g:255, b:255},
    use_bc: true,
    timenav_height_percentage: 60,
    initial_zoom: 1,
    duration: 500,
    timenav_position: "top",
    slide_default_fade: "10%"
  }

  connect() {
    window.timeline = new TL.Timeline(this.element, this.datesValue, this.additionalOptions)
  }
}
