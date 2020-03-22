import "bootstrap";
import flatpickr from "flatpickr"
import 'flatpickr/dist/flatpickr.min.css'


flatpickr(".datepicker", {
  mode: "range"


});


$("tr[data-link]").click(function() {
  window.location = $(this).data("link")
})


