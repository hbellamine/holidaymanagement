import "bootstrap";
import flatpickr from "flatpickr"
import 'flatpickr/dist/flatpickr.min.css'


flatpickr(".datepicker", {
  mode: "range",
  dateFormat: "d-m-Y",

   onClose: function(selectedDates, dateStr, instance) {
          let daysInRange = document.getElementsByClassName('inRange');
          let daysLengthTotal = daysInRange.length + 1;
          const list = document.querySelector('#nbdays');
          list.innerHTML = "";
          list.insertAdjacentHTML('beforeend', `<h5><li>${daysLengthTotal} jours</li></h5>`);

          const listabs = document.querySelector('#nbdaysabsence');
          listabs.innerHTML = "";
          listabs.insertAdjacentHTML('beforeend', `<h5><li>${daysLengthTotal} jours</li></h5>`);

        },



});


$("tr[data-link]").click(function() {
  window.location = $(this).data("link")
})


