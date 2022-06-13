import { Controller }  from "@hotwired/stimulus"
import $ from 'jquery'
import 'select2'

export default class extends Controller {

  connect() {
    console.log("new select2")

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

    const select = () => {
      $(this.element).select2({
        closeOnSelect: false,
        placeholder: "Select an event from our Database",
        minimumInputLength: 3,
        selectOnClose: true,
        matcher: matchEvent
      })
    }

    $(document).ready(function() {
      console.log("I am ready!")
      select()
    })
  }
}
