const computeTotalPrice = (startDateInput, endDateInput) => {
  //  in event callback : 
  //    if both input *values* are present (no emptry strings): 
  if (startDateInput.value != '' && endDateInput.value != '') {
    const startDate = new Date(startDateInput.value);
    const endDate   = new Date(endDateInput.value);
    //      calculate difference in days (you may need to convert strings to date objects)
    const diffInDays = (endDate - startDate) / 86400000;
    const pricePerDayElement = document.getElementById('total-price');
    // <p data-price-per-day="<%= @flat.price_per_day %>" id="total-price">Total price: ...</p> 
    const pricePerDay        = Number.parseInt(pricePerDayElement.dataset.pricePerDay, 10);
    //      mulitply by price_per_day*
    const totalPrice = diffInDays * pricePerDay;
    // console.log(totalPrice)
    //      insert result in HTML element where we want to display total price (element.innerText = ...)
    //    else -> end
    // else -> end
    if (totalPrice > 0) {
      pricePerDayElement.innerHTML = `Prix Total : ${totalPrice}€`;
    } else {
      pricePerDayElement.innerHTML = `
        <span class="text-danger">
          la date de départ doit être antérieur à la date de fin
        </span>
      `;
    }
  }
};

const initTotalPrice = () => {
  // select both start_date and end_date inputs
  const startDateInput = document.getElementById('reservation_start_date');
  const endDateInput   = document.getElementById('reservation_end_date');
  
  if (startDateInput && endDateInput) {
    //  add an eventListener on both input on change event
    startDateInput.addEventListener('change', () => computeTotalPrice(startDateInput, endDateInput));
    endDateInput.addEventListener('change', () => computeTotalPrice(startDateInput, endDateInput));
  }
};

export { initTotalPrice };