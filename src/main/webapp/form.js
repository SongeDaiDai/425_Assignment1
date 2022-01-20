function checkBin10() {
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


function checkValue() {
    // Get the value of the input field with id="ISBN10"
    let z = document.getElementById("price").value;
    // If x is Not a Number or less than one or greater than 10
    let price;
    if (z < 50 && z != "" || z > 500 && z != "") {
        price = "The Price must be between 50.00$ and 500.00$";
        document.getElementById("cost").innerHTML = price;
        return false;
    } else {
        price = "";
        document.getElementById("cost").innerHTML = price;
        return true;
    }
}

function sendForm() {
    if (checkValue() == true && checkBin10() == true && checkBin13() == true) {
        document.getElementById("bookForm").submit();
    }
}