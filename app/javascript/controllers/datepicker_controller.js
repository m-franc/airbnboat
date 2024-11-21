import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {
    dates: Array,
  }

  connect() {
    flatpickr(this.element, {
      mode: "range",
      dateFormat: "Y-m-d",
      disable: this.datesValue,
      minDate: new Date(),
    })
  }
}
