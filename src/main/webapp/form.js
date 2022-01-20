/*function checkBin10() {
    // Get the value of the input field with id="ISBN10"
    let ib10doc = document.getElementById("ISBN10");
    let isbn10;
    // If x is Not a Number or less than one or greater than 10
    if (x.textContent == "" || x.textContent == 0) {
        isbn10 = "";
        document.getElementById("i10").innerHTML = isbn10;
        return false;
    } else if (x.textContent.length != 10 && x != " ") {
        isbn10 = "ISBN-10 must have 10 Numerical Char.";
        document.getElementById("i10").innerHTML = isbn10;
        return false;
    } else {
        document.getElementById("i10").innerHTML = " ";
        return true;
    }
}

function checkBin13() {
    // Get the value of the input field with id="ISBN13"
    var y = document.getElementById("ISBN13").value;
    let error13;
    let z = y.textContent.length;
    // If y is Not a Number or less than one or greater than 13
    if (z <= 13 && z > 0) {
        isbn13 = "ISBN-13 must have 13 Numerical Char.";
        document.getElementById("i13").innerHTML = error13;
        return false;
    } else {
        document.getElementById("i13").innerHTML = " ";
        return true;
    }
}
*/

function checkValue() {
    // get value of price from form
    let price = document.getElementById("price").value;
    // If price < 50 && >500 error display
    let errorCost;
    if (price < 50 && price != 0 || price > 500 && price != 0) {
        errorCost = "The Price must be between 50.00$ and 500.00$";
        document.getElementById("cost").innerHTML = errorCost;
        return false;
    } else {
		errorCost = " ";
        document.getElementById("cost").innerHTML = errorCost;
    return true;   
    }
}
//&& checkBin10() != true && checkBin13() != true//
function sendForm() {
    if (checkValue != true ) {
        document.querySelector("send").addEventListener("click", function(event){
	event.preventDefault();
},false);
}