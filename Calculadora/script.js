document.addEventListener("DOMContentLoaded", () => {
  const display = document.getElementById("display");
  const buttons = document.querySelector(".buttons");

  let currentInput = "";
  let previousInput = "";
  let operator = null;
  let shouldResetDisplay = false;

  buttons.addEventListener("click", (event) => {
    const target = event.target;
    const value = target.dataset.value;
    const buttonId = target.id;

    if (!target.matches("button")) return;

    if (buttonId === "clear") {
      clearCalculator();
      return;
    }

    if (buttonId === "equals") {
      if (operator === null || currentInput === "" || previousInput === "") {
        return;
      }
      calculate();
      operator = null;
      shouldResetDisplay = true;
      return;
    }

    if (value !== undefined && (!isNaN(value) || value === ".")) {
      if (shouldResetDisplay) {
        currentInput = "";
        shouldResetDisplay = false;
      }
      if (value === "." && currentInput.includes(".")) return;
      currentInput += value;
      display.value = currentInput;
    } else {
      if (currentInput === "" && previousInput === "") return;

      if (operator !== null && !shouldResetDisplay && currentInput !== "") {
        calculate();
      }
      operator = value;
      previousInput = currentInput === "" && previousInput !== "" ? previousInput : currentInput;
      currentInput = "";
      shouldResetDisplay = true;
      display.value = previousInput + " " + operator;
    }
  });

  function clearCalculator() {
    currentInput = "";
    previousInput = "";
    operator = null;
    shouldResetDisplay = false;
    display.value = "";
    console.log("Calculator Cleared");
  }

  function calculate() {
    const prev = parseFloat(previousInput);
    const current = parseFloat(currentInput);

    if (isNaN(prev) || isNaN(current)) {
      display.value = "Error";
      console.error("Calculation error: Invalid numbers");
      currentInput = "";
      operator = null;
      shouldResetDisplay = true;
      return;
    }

    let result;
    switch (operator) {
      case "+":
        result = prev + current;
        break;
      case "-":
        result = prev - current;
        break;
      case "*":
        result = prev * current;
        break;
      case "/":
        if (current === 0) {
          display.value = "Error: Div by 0";
          clearCalculatorPartial();
          return;
        }
        result = prev / current;
        break;
      default:
        return;
    }

    display.value = result;
    currentInput = result.toString();
    previousInput = "";
    shouldResetDisplay = true;
    console.log("Calculated:", prev, operator, current, "=", result);
  }

  function clearCalculatorPartial() {
    currentInput = "";
    shouldResetDisplay = true;
  }
});