function priceCalc () {
  const priceInput = document.getElementById("item-price");
  const commission = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");
  priceInput.addEventListener("input",() => {
    const inputValue = priceInput.value;
    if (inputValue < 300 ){
      commission.innerHTML = 0
      profit.innerHTML = 0
    } else {
      const commissionValue = Math.floor(inputValue * 0.1);
      commission.innerHTML = commissionValue;
      profit.innerHTML = (inputValue - commissionValue);  
    }
  });
};

window.addEventListener('turbo:load', priceCalc);
window.addEventListener('turbo:render', priceCalc);