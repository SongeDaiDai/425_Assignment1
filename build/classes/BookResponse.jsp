<html>

<head>
    <meta charset="utf-8">
    <title>425 - Assignment 1 Response</title>
    <link href="assets/css/form.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a5769a4d9e.js" crossorigin="anonymous"></script>
</head>

<body>
    <second>
        <div class="super form0">Assignment 1 <i class="fas fa-keyboard"></i></div><br>
        <span class="added form1" id="success"><i class="fas fa-check-double"></i> The book has been added.</span>
        <br/>
        <hr class="rounded">
        <br/>
        <span class="entries form2"><i class="fas fa-book"></i> Book title:</span> ${param.title}<br/><span class="entries"><i class="fas fa-pencil-alt pad1 "></i> Author:</span> ${param.author}<br/> <span class="entries"><i class="fas fa-barcode pad1 "></i> ISBN-10:</span>        ${param.ISBN10}
        <br/> <span class="entries form"><i class="fas fa-barcode pad1 "></i> ISBN-13:</span> ${param.ISBN13}
        <br/><br/>
        <hr class="rounded"><br/>
        <span class="entries form3"><i class="fas fa-heading"></i> Publisher:</span>
        <ul>
            <%	
		String[] publishers = request.getParameterValues("publisher");
		if(publishers != null) {
			for(String publisher : publishers) {
				out.print("<li>" + publisher + "</li>"); } } %>
        </ul>
        <span class="entries form4"><i class="fab fa-firstdraft"></i> Edition: </span>
        <ul>
            <li>${param.edition}</li>
        </ul>
        <span class="entries form5"><i class="fas fa-feather-alt"></i> Subject(s): </span>
        <ul>
            <%	
		String[] subjects = request.getParameterValues("subject");
		if(subjects != null) {
			for(String subject : subjects) {
				out.print("<li>" + subject + "</li>");	
			}	
		}
	%>
        </ul>
        <hr class="rounded">
        <div class="price form6" style="padding-bottom: 2rem; text-align: right;">Price: <b>${param.price}</b> <i class="fas fa-dollar-sign" style="color: darkgray;"></i> </div>

    </second>

</body>

</html>