function checkValue() {
    let price = document.getElementById('price').value;
    let errorPrice;
    if (Number(price) < 50 && Number(price) !== 0 || Number(price) > 500 && Number(price !== 0)) {
         errorPrice = "The Price must be between 50.00$ and 500.00$";
		document.getElementById("errorPrice").innerHTML = errorPrice;
        return false;
    } else {
	errorPrice = "";
	return true;
    }
	
}

function testB10() {
    let isbn10 = document.getElementById("ISBN10").value;
    let len10 = isbn10.length;
	let error10;
    if (len10 === 0) {
		error10 = "ISBN-10 is mandatory. Please enter a 10 digits number.";
        document.getElementById("error10").innerHTML = error10;
        return false;
    }
    if (len10 !== 10) {
		error10 = "You have entered " + len10 + " digits out of 10.";
		document.getElementById("error10").innerHTML = error10;
    	return false;
    }
    if (len10 === 10) {
		error10 ="";
        return true;

    }
}
function testB13() {
    let isbn13 = document.getElementById("ISBN13").value;
    // Get the value of the input field with id="ISBN10"
    let len13 = isbn13.length;
    let error13;
    if (len13 === 0) {
		error13 = "";
        return true;
    }
    if (len13 === 13) {
		error13 = "";    
    	return true;
    }
    if (len13 !== 13) {
        error13 = "You have entered " + len13 + " out of 13.";
        document.getElementById("error13").innerHTML = error13;
        return false;
    }

}
function submitForm() {

    if (checkValue() && testB10() || checkValue() && testB13() && testB10()) {
        OpenWindowWithPost();
    } else {
        document.getElementById("bookForm").addEventListener("submit", function (forSub) {
            forSub.preventDefault();
            document.getElementById("errorForm").innerHTML = "Please verify all of your entries.";
        }, false);
    }
}

function OpenWindowWithPost() {
    let form = document.getElementById("bookForm");
    let price = document.getElementById('price');
    form.setAttribute("method", "post");
    if (price < 50) {
        document.getElementById('price').value = "0.00";
    }
    form.submit();
    window.open("BookResponse.jsp", "_self",);
}