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

function eventer(timeline, counter) {
  const colorarray = ["#1B1B19", "#982226", "#959595"];
  const eventarray = (timeline.events).map((event) => {
    const hash = {
      group: `${timeline.name}`,
      unique_id: `color${counter + 1}`,
      background: {
        color: colorarray[counter]
      },
      media: {
        url: url_for(event.photo),
        thumbnail: url_for(event.photo)
      },
      start_date: {
        month: event.start_date.mon,
        day: event.start_date.day,
        year: event.start_date.year
      },
      end_date: {
        month: event.end_date.mon,
        day: event.end_date.day,
        year: event.end_date.year
      },
      text: {
        headline: event.name,
        text: event.description
      }
    };
    return hash;
  });
};

function combiner(array) {
  let counter = 0;
  let totaleventarray = [];
  array.forEach(timeline => {
    totaleventarray.push(eventer(timeline, counter));
    counter++;
  });
  const timelinehash = {
    title: {
      text: {
        headline: "Your timeline",
        text: "Here you can view events from your chosen timelines!"
      }
    },
    events: totaleventarray.flat()
  };
  return totaleventarray;
};
