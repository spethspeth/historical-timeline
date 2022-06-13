import { Controller }  from "@hotwired/stimulus"
import $ from 'jquery'
import 'select2'

import "select2/dist/css/select2.min.css"

export default class extends Controller {

  connect() {
    const matchEvent = (params, data) => {
      if ($.trim(params.term) === '') {
        return data;
      }

      if (typeof data.text === 'undefined') {
        return null;
      }

      if (data.text.toUpperCase().indexOf(params.term.toUpperCase()) > -1) {
        var modifiedData = $.extend({}, data, true);
        modifiedData.text += ' ';
        return modifiedData;
      }
      return null;
    };

    $(this.element).select2({
      closeOnSelect: false,
      placeholder: "Select an event from our Database",
      minimumInputLength: 3,
      selectOnClose: true,
      allowClear: true,
      matcher: matchEvent
    })
  }
}
