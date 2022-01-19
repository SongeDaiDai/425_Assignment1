<html>

<head>
    <meta charset="utf-8">
    <title>425 - Assignment 1 Response</title>
    <link href="form.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a5769a4d9e.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="col">

        <div class="form row">
            <div class="super">Assignment 1 <i class="fas fa-keyboard"></i></div><br>
            <span class="added" id="success"><i class="fas fa-check-double"></i> The book has been added.</span><br/>
            <hr class="rounded">
            <br/>
            <span class="entries"><i class=" fas fa-book"></i> Book title:</span> ${param.title}<br/><span class="entries"><i class="fas fa-pencil-alt padthis "></i> Author:</span> ${param.author}<br/> <span class="entries"><i class="fas fa-barcode padthis "></i> ISBN:</span>            ${param.ISBN}
            <br/><br/>
            <hr class="rounded"><br/>
            <span class="entries"><i class="fas fa-heading"></i> Publisher:</span>
            <ul>
                <%	
		String[] publishers = request.getParameterValues("publisher");
		if(publishers != null) {
			for(String publisher : publishers) {
				out.print("<li>" + publisher + "</li>"); } } %>
            </ul>
            <span class="entries"><i class="fab fa-firstdraft"></i> Edition: </span>
            <ul>
                <li>${param.edition}</li>
            </ul>
            <span class="entries"><i class="fas fa-feather-alt"></i> Subject(s): </span>
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
            <div class="price" style="padding-bottom: 2rem; text-align: right;">Price: <b>${param.price}</b> <i class="fas fa-dollar-sign" style="color: darkgray;"></i> </div>

        </div>
    </div>
</body>

</html>