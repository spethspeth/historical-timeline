import { Controller }  from "@hotwired/stimulus"
import $ from 'jquery'
import 'select2'

import "select2/dist/css/select2.min.css"

export default class extends Controller {
  static values = { options: Object }

  connect() {
    console.log("select2 for timelines")

    $(this.element).select2(this.optionsValue)
  }
}
