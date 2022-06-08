import { Controller } from "stimulus"
import $ from 'jquery';
import select2 from "select2"

export default class extends Controller {

  connect(){
    function matchEvent(params, data) {
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
  }

    $(document).ready(function() {
      $(".js-matcher-multiple").select2({
        closeOnSelect: false,
        placeholder: "Select an event",
        minimumInputLength: 3,
        selectOnClose: true,
        matcher: matchEvent
      });
    })
  }
}
