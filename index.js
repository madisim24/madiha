// Get the elements by their id
var vehicleType = document.getElementById("vehicle-type");
var tollAmount = document.getElementById("toll-amount");

// Define a function to update the toll amount
function updateTollAmount() {
  // Get the value of the selected option
  var selectedValue = vehicleType.value;
  // Assign it to the toll amount input
  tollAmount.value = selectedValue;
}

// Call the function when the page loads
updateTollAmount();
vehicleType.addEventListener("change", updateTollAmount);


