import $ from 'jquery'
import 'select2'

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

const initSelect2 = () => {
  $(".js-matcher-multiple").select2({
    closeOnSelect: false,
    placeholder: "Select an event",
    minimumInputLength: 3,
    selectOnClose: true,
    matcher: matchEvent
  });
};

// bookmarkSelector is just some placeholder code for the bookmark submission form on the timeline viewer, just leave it here for now

const bookmarkSelector = () => {
  $(".js-bookmark-dropdown").select2({
  });
};

export { initSelect2 }
export { bookmarkSelector }
