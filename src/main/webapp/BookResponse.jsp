<html>

<head>
    <meta charset="utf-8">
    <title>425 - Assignment 1 Response</title>
    <link href="assets/css/form.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/a5769a4d9e.js" crossorigin="anonymous"></script>
</head>

<body>
    <second>
    <div style="width: 100%; align-items: center;">
        <h1>Assignment 1&nbsp;&nbsp;<i class="fas fa-keyboard"></i></h1>
        <h2 class="limit added form0" id="success"><i class="fas fa-check-double"></i>&nbsp;&nbsp;The book has been added.</h2>
        <hr class="rounded">
        <span class="limit entries form0"><i class="fas fa-book"></i>&nbsp;&nbsp;Book title:</span>&nbsp; ${param.title}
        <span class="limit entries form0"><i class="fas fa-pencil-alt"></i> Author:</span>&nbsp; ${param.author}
        <span class="limit entries form0"><i class="fas fa-barcode"></i>&nbsp;&nbsp;ISBN-10:</span>&nbsp;${param.ISBN10} 
        <span class="limit entries form0"><i class="fas fa-barcode"></i>&nbsp;&nbsp;ISBN-13:</span>&nbsp; ${param.ISBN13}
        <br/>
        <hr class="rounded"><br/>
        <span class="limit entries form0"><i class="fas fa-heading"></i>&nbsp;&nbsp;Publisher:</span>
        <ul>
            <%	
		String[] publishers = request.getParameterValues("publisher");
		if(publishers != null) {
			for(String publisher : publishers) {
				out.print("<li>" + publisher + "</li>"); } } %>
        </ul>
        <span class="limit entries form0"><i class="fab fa-firstdraft"></i>&nbsp;&nbsp;Edition: </span>
        <ul>
            <li>${param.edition}</li>
        </ul>
        <span class="limit entries form0"><i class="fas fa-feather-alt"></i>&nbsp;&nbsp;Subject(s): </span>
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
        <div class="price">Price:&nbsp;<b>${param.price}</b>&nbsp;&nbsp;<i class="fas fa-dollar-sign" style="color: darkgray;"></i> </div>
	<img class="round" style="justify-content: center;" src="assets/images/cat-reading.gif"></img>
</div>
    </second>

</body>

</html>