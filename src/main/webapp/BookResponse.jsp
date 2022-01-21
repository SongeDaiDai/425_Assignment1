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
        <h2 class=" added " id="success"><i class="fas fa-check-double"></i>&nbsp;&nbsp;The book has been added.</h2>
        <hr class="rounded">
        <div class="entries"><i class="fas fa-book"></i>&nbsp;&nbsp;Book title:<span style="font-size: 1rem; color: #fff;">&nbsp;&nbsp;${param.title}</span></div>
        <div class="entries"><i class="fas fa-pencil-alt"></i> Author:<span style="font-size: 1rem; color: #fff;">&nbsp;&nbsp; ${param.author}</span></div>
        <div class="entries"><i class="fas fa-barcode"></i>&nbsp;&nbsp;ISBN-10:<span style="font-size: 1rem; color: #fff;">&nbsp;&nbsp;${param.ISBN10}</span></div> 
        <div class="entries"><i class="fas fa-barcode"></i>&nbsp;&nbsp;ISBN-13:<span style="font-size: 1rem; color: #fff;">&nbsp;&nbsp; ${param.ISBN13}</span></div>
        
        <hr class="rounded"><br/>
        <div class=" entries "><i class="fas fa-heading"></i>&nbsp;&nbsp;Publisher:</div>
        <ul>
            <%	
		String[] publishers = request.getParameterValues("publisher");
		if(publishers != null) {
			for(String publisher : publishers) {
				out.print("<li>" + publisher + "</li>"); } } %>
        </ul>
        <div class=" entries "><i class="fab fa-firstdraft"></i>&nbsp;&nbsp;Edition: </div>
        <ul>
            <li>${param.edition}</li>
        </ul>
        <div class=" entries "><i class="fas fa-feather-alt"></i>&nbsp;&nbsp;Subject(s): </div>
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
        
        <div class="price">Price:&nbsp;<b>
        <%
        String price = request.getParameter("price");
        double d = Double.parseDouble(price);
        out.print(String.format("%,.2f", d));
        %>
        </b>&nbsp;<i class="fas fa-dollar-sign" style="color: darkgray;"></i> </div>
	<div><img class="round" src="assets/images/cat-reading.gif"></img></div>
</div>
    </second>

</body>

</html>