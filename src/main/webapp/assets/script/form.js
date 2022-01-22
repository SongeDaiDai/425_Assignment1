function checkPrice() {
    let price = document.getElementById('price').value;
    let errorPrice = "";
    
    if (price != "" && (price < 50 || price > 500)) {
        errorPrice = "The price must be between 50.00$ and 500.00$";
        document.getElementById("errorPrice").innerHTML = errorPrice;
        return false;
	}
        
    return true;
}

function checkISBN10() {
    let isbn10 = document.getElementById("ISBN10").value;
    let len10 = isbn10.length;
    let error10 = "";
    
    if (len10 === 0) {
        error10 = "ISBN-10 is mandatory. Please enter a 10 digits number.";
        document.getElementById("error10").innerHTML = error10;
        return false;
    } else if (len10 !== 10) {
        error10 = "You have entered " + len10 + " digits out of 10.";
        document.getElementById("error10").innerHTML = error10;
        return false;
    }

    return true;
    
}

function checkISBN13() {
    let isbn13 = document.getElementById("ISBN13").value;
    let len13 = isbn13.length;
    let error13 = "";
    
    if (len13 !== 0 && len13 !== 13) {
        error13 = "You have entered " + len13 + " out of 13.";
        document.getElementById("error13").innerHTML = error13;
        return false;
    }   
    
    return true;
}

function submitForm() {

    if (checkPrice() && checkISBN13() && checkISBN10()) {
        return true;
    } else {
		document.getElementById("errorForm").innerHTML = "Please verify all of your entries.";
		return false;
    }
}