/* recursion.re */
let rec factorial = (param) => {
  if (param <= 1) {
    1
  } else {
    param * factorial(param - 1)
  }
};

Js.log("Enter an integer: ");
let input = NodeJs.readlineSync().question("");
let param = int_of_string(input);
if (param == 0 && input != "0") {
  Js.log("Invalid input");
} else {
  Js.log(factorial(param));
};
