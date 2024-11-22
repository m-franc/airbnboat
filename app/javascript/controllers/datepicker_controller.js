import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {
    dates: Array,
    price: Number
  }

  connect() {
    const total = document.getElementById("price");
    flatpickr(this.element, {
      mode: "range",
      dateFormat: "Y-m-d",
      disable: this.datesValue,
      minDate: new Date(),
      onClose: () => {
        const dates = this.element.value.split(" to ")
        const oneDay = 24 * 60 * 60 * 1000;
        const startDate = new Date(dates[0]);
        const endDate = new Date(dates[1]);
        const diffDays = Math.round(Math.abs((endDate - startDate) / oneDay));
        const totalPrice = diffDays * this.priceValue
        total.innerHTML = totalPrice
      }
    })
  }
}
